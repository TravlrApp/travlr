# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all


locations = ['New York', 'Boston', 'Hong Kong', 'London', 'Tokyo', 'Chicago', 'San Fransisco', 'Paris', 'Vancouver', 'Madrid', 'Mings house']
activities = ['Swimming', 'Hiking', 'Guided Tour', 'Diving', 'Climbing', 'Skydiving', 'Eating', 'Clubbing', 'Beach', 'Skiing', 'Snowboarding', 'Ziplining']
user_ids = [26, 27, 28, 29] #need to change if users are reset


1000.times do
  year = Time.now.year
  month = rand(12) + 1
  day = rand(15) + 1 
  activity_num = rand(11)
  activity1 = activities[activity_num]
  activity2 = activities[activity_num + 1]

	start_date = Time.local(year, month, day)
	end_date = Time.local(year, month, day + rand(15))
	Post.create({description: "test", user_id: user_ids[rand(4)], start_date: start_date, end_date: end_date, location: locations[rand(11)], activity1: activity1, activity2: activity2})
end



=begin
User.create({user_name: 'ctaylor', first_name: 'Connor', last_name: 'Taylor', age: '20', email: 'test1@test.com', password: '1234'})
User.create({user_name: 'sclark', first_name: 'Shea', last_name: 'Clark-Tieche', age: '21', email: 'test2@test.com', password: '12345'})
User.create({user_name: 'spurcell', first_name: 'Sam', last_name: 'Purcell', age: '21', email: 'test3@test.com', password: '123456'})
User.create({user_name: 'dminnick', first_name: 'Dixon', last_name: 'Minnick', age: '21', email: 'test4@test.com', password: '1234567'})
=end