class InvitationsController < ApplicationController

  def create

    @invitation = Invitation.new(invitation_params)

    if @invitation.valid?
      InvitationMailer.invite(@invitation).deliver_now
      render json: {message: 'success'}
    else
      render json: {message: 'error'}
    end
  end

  private

  def invitation_params
    params.require(:invitation).permit(:email, :link)
  end
end
