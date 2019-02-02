class DateRange < ApplicationRecord
  has_many :meeting_ranges
  has_many :users
end
