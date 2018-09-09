class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.references :user, foreign_key: true
      t.references :scheduled_habit, foreign_key: true

      t.timestamps
    end
  end
end
