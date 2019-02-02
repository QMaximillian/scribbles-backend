class MeetingRange < ApplicationRecord
  belongs_to :date_range
  has_many :meeting_times
end
