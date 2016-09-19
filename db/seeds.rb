# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Food.delete_all

banana = Food.create({name: "Banana", category: "Fruit", calorie: 89, fat: 0.3, protein: 1.1})
apple = Food.create({name: "Apple", category: "Fruit", calorie: 52, fat: 0.2, protein: 0.3})
orange = Food.create({name: "Orange", category: "Fruit", calorie: 47, fat: 0.1, protein: 0.9})

peter = User.first
saber = User.find_by(name: "saber")


peter.records.first.foods << [banana,apple,orange]


Record.create(user_id: 3 , date_create: "2016-09-18")
Record.create(user_id: 3 , date_create: "2016-09-17")
Record.create(user_id: 3 , date_create: "2016-09-16")
Record.create(user_id: 3 , date_create: "2016-09-15")
Record.create(user_id: 3 , date_create: "2016-09-14")
Record.create(user_id: 3 , date_create: "2016-09-13")
Record.create(user_id: 3 , date_create: "2016-09-12")
Record.create(user_id: 3 , date_create: "2016-09-11")
Record.create(user_id: 3 , date_create: "2016-09-10")

saber.records.first.foods << [banana,orange]
