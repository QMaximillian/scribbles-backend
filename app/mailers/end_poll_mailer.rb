class EndPollMailer < ApplicationMailer
  def end_poll(emails)
    @emails = emails

    @emails do |email|
    mail to: email, subject: "Meeting Scheduled"
  end
  end
end
