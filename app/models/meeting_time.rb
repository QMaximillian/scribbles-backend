class MeetingTime < ApplicationRecord
   belongs_to :meeting_range, optional: true
   belongs_to :user, optional: true
end
