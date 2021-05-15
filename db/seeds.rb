# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meal.create(title: "Pho", description: "Pho is one of my favorite Vietnamese dishes!", meal_time: "Breakfast", user_id: 2)
Meal.create(title: "Bun Bo Hue", description: "Love a good bowl of Bun Bo Hue!", meal_time: "Dinner", user_id: 1)
Meal.create(title: "In n Out CheeseBurgers", description: "Best burger ever!", meal_time: "Lunch", user_id: 1)
Meal.create(title: "Spaghetti", description: "Spaghetti is one of the greatest dishes you could ever taste", meal_time: "Dinner", user_id: 3)
Meal.create(title: "Ramen", description: "Ramen is forever my favorite!", meal_time: "Lunch", user_id: 3)

User.create(name: "Sunshine")
User.create(name: "Mickey")
User.create(name: "Luffy")
