class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]


  # GET /users
  def index
    @users = User.all

    render json: @users, status: :ok
  end

  # GET /users/1
  def show
    @user = User.find(params[:id])

    render json: @user, status: :ok
  end
  #
  # # POST /users
  def create
    @user = User.create(user_params)
    if @user.valid?

      render json: @user, status: :created

    else
     render json: { error: @user.errors }, status: :not_acceptable
   end
 end
    # else
    #   render json: @user.errors, status: :unprocessable_entity

  #
  # # PATCH/PUT /users/1
  def update
    set_user_by_email
    if @user && @user.update(user_params)
      render json: @user, status: :ok
    else
      render json: {message: "You have not been invited to this poll"}, status: :unprocessable_entity
    end
  end
  #
  # # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_user
      @user = User.find(params[:id])
    end

    def set_user_by_email
      @user = User.find(params[:email])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :meeting_range_id)
    end

end
