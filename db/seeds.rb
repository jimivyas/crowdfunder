# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


p1 = Project.create(
	owner: User.create(
		first_name: "Bob",
		last_name: "Testuser",
		email: "bob@fake.com",
		password: "fake",
		password_confirmation: "fake"
	),
	name: "first project",
	funding_goal: 3000,
	start_date: 4.days.ago,
	end_date: 3.months.from_now,
	description: "this is a project"
)

p1.rewards.create(
	description: "ferarri",
	amount: 10
	)