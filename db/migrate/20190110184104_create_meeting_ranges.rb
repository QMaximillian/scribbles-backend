class CreateMeetingRanges < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_ranges do |t|
      t.date :begin_date
      t.date :end_date
      t.date :end_poll
      t.time :cut_off_early
      t.time :cut_off_late
      t.integer :interval

      t.timestamps
    end
  end
end
