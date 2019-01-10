class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, limit: 35
      t.integer :meeting_range_id
      t.timestamps
    end
  end
end
