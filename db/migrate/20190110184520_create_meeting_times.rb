class CreateMeetingTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_times do |t|
      t.integer :meeting_range_id, optional: true
      t.integer :user_id, optional: true
      t.datetime :day
      t.datetime :begin_time
      t.datetime :end_time
      t.boolean :affirmative, optional: true

      t.timestamps
    end
  end
end
