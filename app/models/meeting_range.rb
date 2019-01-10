class MeetingRange < ApplicationRecord
  has_many :meeting_times
  has_many :users
end
