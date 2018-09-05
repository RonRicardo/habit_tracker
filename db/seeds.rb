# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Schedule.destroy_all
Habit.destroy_all
User.destroy_all

habit1 = Habit.create(name: "Yoga Poses", description: "Did you spend at least 10 minutes, ahem?")
habit2 = Habit.create(name: "Drink some water", description: "Get them 8-10 glasses goin'! Chug!")
habit3 = Habit.create(name: "Call mom or dad", description: "You know you want toooooo.")
habit4 = Habit.create(name: "Tidy the house", description: "You got this!")
habit5 = Habit.create(name: "Sleep before 11 pm", description: "It's hard, but you got this!")

user1 = User.create(name: "Aisha")
user2 = User.create(name: "Roniece")
user3 = User.create(name: "Hana")
user4 = User.create(name: "Inayah")
user5 = User.create(name: "Soraya")
user6 = User.create(name: "Aliya")
user7 = User.create(name: "Sarah")

# Schedule.create(time: 1.0, user_id: user1.id, habit_id: habit2.id, frequency: "Daily", start_date: Faker::Date.backward(30), end_date: Faker::Date.forward(30))
# Schedule.create(time: 1.0, user_id: user1.id, habit_id: habit2.id, frequency: "Daily", start_date: Faker::Date.backward(30), end_date: Faker::Date.forward(30))
# Schedule.create(time: 1.0, user_id: user1.id, habit_id: habit2.id, frequency: "Daily", start_date: Faker::Date.backward(30), end_date: Faker::Date.forward(30))


# Schedule.create(time: "Call mom or dad", user_id: user3.id, habit_id: habit3.id, frequency: "Daily", start_date: Faker::Date.backward(30), end_date: Faker::Date.forward(30))
# Schedule.create(time: "Tidy the house", user_id: user4.id, habit_id: habit4.id, frequency: "Weekly", start_date: Faker::Date.backward(30), end_date: Faker::Date.forward(30))
# Schedule.create(time: "Sleep before 11 pm", user_id: user5.id, habit_id: habit5.id, frequency: "Daily", start_date: Faker::Date.backward(30), end_date: Faker::Date.forward(30))
