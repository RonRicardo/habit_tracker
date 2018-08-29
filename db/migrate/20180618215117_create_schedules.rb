class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.float :time
      # t.integer :user_id
      # t.integer :habit_id
      t.references :user
      t.references :habit
      t.string :frequency
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
