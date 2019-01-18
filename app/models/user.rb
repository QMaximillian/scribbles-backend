class User < ApplicationRecord
  belongs_to :meeting_range
  has_many :meeting_times

  def format
    {users: self, meeting_times: self.meeting_times}
  end
end
