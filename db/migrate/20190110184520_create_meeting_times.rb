class CreateMeetingTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_times do |t|
      t.integer :meeting_range_id, optional: true
      t.integer :user_id, optional: true
      t.date :day
      t.time :begin_time
      t.time :end_time

      t.timestamps
    end
  end
end
