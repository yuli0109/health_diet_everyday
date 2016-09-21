# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

banana = Food.create({name: "Banana", category: "Fruit", calorie: 89, fat: 0.3, protein: 1.1})
apple = Food.create({name: "Apple", category: "Fruit", calorie: 52, fat: 0.2, protein: 0.3})
orange = Food.create({name: "Orange", category: "Fruit", calorie: 47, fat: 0.1, protein: 0.9})


Food.create({name: "Milk", category: "Drink", calorie: 42, fat: 1, protein: 3.4})
Food.create({name: "Yogurt-Greek", category: "Drink", calorie: 59, fat: 0.4, protein: 10})
Food.create({name: "Egg", category: "Meat", calorie: 155, fat: 11, protein: 13})


