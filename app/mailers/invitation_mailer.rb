class InvitationMailer < ApplicationMailer
  def invite(invitation)
    @invitation = invitation

    mail to: @invitation.email, subject: "You've Been Invited to Find A Meeting Time"
  end
end
