# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "creating Foods"

Food.delete_all

a = [
	["Mango", "Fruit", "A"],
	["Orange", "Fruit", "A"],
]

a2 = a.map do |a|
	Food.create( :name => a[0], :category => a[1], :vitamin => a[2])
end

c = [
	["Potato", "Starch", "C"],
	["Orange", "Fruit", "C"],
]

c.each do |c|
	Food.create( :name => c[0], :category => c[1], :vitamin => c[2])
end

puts "creating Nutrients"

Nutrient.delete_all

na = Nutrient.create! name: "vitamin A"

puts "Join Table"

a2.each do |food|
	food.nutrients << na
end 
