# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Post.delete_all
reset_session

User.create({user_name: 'ctaylor', first_name: 'Connor', last_name: 'Taylor', age: '19', email: 'test1@test.com', password: '1234'})
User.create({user_name: 'sclark', first_name: 'Shea', last_name: 'Clark-Tieche', age: '21', email: 'test2@test.com', password: '12345'})