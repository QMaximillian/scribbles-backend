class DateRangesController < ApplicationController
  before_action :set_date_range, only: [:show, :update, :destroy]

  # GET /date_ranges
  def index
    @date_ranges = DateRange.all

    render json: @date_ranges
  end

  # GET /date_ranges/1
  def show
    render json: @date_range
  end

  # POST /date_ranges
  def create
    @date_range = DateRange.new(date_range_params)

    if @date_range.save
      render json: @date_range, status: :created, location: @date_range
    else
      render json: @date_range.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /date_ranges/1
  def update
    if @date_range.update(date_range_params)
      render json: @date_range
    else
      render json: @date_range.errors, status: :unprocessable_entity
    end
  end

  # DELETE /date_ranges/1
  def destroy
    @date_range.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_range
      @date_range = DateRange.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def date_range_params
      params.fetch(:date_range, {})
    end
end
