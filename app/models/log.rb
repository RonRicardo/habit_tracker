class Log < ApplicationRecord
  belongs_to :user
  belongs_to :scheduled_habit
end
