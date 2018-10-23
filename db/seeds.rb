# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fridge.destroy_all

kitchen = Fridge.create(location: "kitchen", brand: "GE", size: 35)
basement = Fridge.create(location: "basement", brand: "Samsung", size: 40)
mancave = Fridge.create(location: "mancave", brand: "Maytag", size: 20)

apple = kitchen.foods.create(name: "Apple", weight: 1, vegan: true)
milk = kitchen.foods.create(name: "Milk", weight: 2, vegan: true)
orange = kitchen.foods.create(name: "Orange", weight: 1, vegan: true)