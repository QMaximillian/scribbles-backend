class CreateDateRanges < ActiveRecord::Migration[5.2]
  def change
    create_table :date_ranges do |t|
      t.date :begin_date
      t.date :end_date
      t.timestamps
    end
  end
end
