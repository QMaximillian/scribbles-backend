class User < ApplicationRecord
  belongs_to :meeting_range
  has_many :meeting_times
end
