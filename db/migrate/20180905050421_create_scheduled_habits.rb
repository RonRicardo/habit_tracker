class CreateScheduledHabits < ActiveRecord::Migration[5.2]
  def change
    create_table :scheduled_habits do |t|
      t.references :user, foreign_key: true
      t.references :habit, foreign_key: true
      t.string :frequency
      t.datetime :end_date
      t.boolean :completed

      t.timestamps
    end
  end
end
