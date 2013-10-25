# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({name: 'Connor', email: 'test@test.com', password: '1234'})
User.create({name: 'Shea', email: 'test@test.com', password: '12345'})
User.create({name: 'Ben', email: 'test@test.com', password: '123456'})