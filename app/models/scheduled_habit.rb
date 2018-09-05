class ScheduledHabit < ApplicationRecord
  belongs_to :user
  belongs_to :habit
end
