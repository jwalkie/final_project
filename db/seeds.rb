# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Food.delete_all

Nutrient.delete_all

puts "CREATING NUTRIENTS"

nutrients = [
	{ name: "Vitamin C", information: "Vitamin C, or ascorbic acid, is used by the human body to make collagen and repair body tissues. The human body cannot make Vitamin C on its own, so it is critical that enough Vitamin C is consumed through fruits, vegetables, or Vitamin C supplements. Over time, severe Vitamin C deficiency can lead to an illness known as scurvy, which is regularly reported in famine situations in suffering parts of Africa. Scurvy affects blood vessels, skin and tissue repair, which results in anemia, skin hemorrhaging, and gum disease. Good food sources that contain Vitamin C are oranges, grapefruit, kiwi, strawberries, tomato, red pepper, potato" },
	{ name: "Iron", information: "Iron deficiency is a problem across the globe, affecting more than 2 billion people. Anaemia in infants and children is associated with stunted physical growth, reduced resistance to infections and slow development of learning abilities. In adults it causes fatigue and reduced work capacity. Blood loss in childbirth is very dangerous for anaemic women and is the main cause of about 20 percent of maternal deaths. Maternal anaemia also leads to fetal growth retardation, low infant birth weight and increased perinatal mortality (death in the first week of life). Good food sources that contain Iron are beef, spinach, potatoes, chicken, oysters, shrimp, tuna, raisins, prunes. kidney beans, chickpeas, lentils, tofu, cashews" },
{ name: "Vitamin A", information: "Vitamin A Deficiency (VAD) primarily affects children and pregnant women. The deficiency tragically causes Nyctalopia, or night blindness, and, eventually, permanent blindness. Vitamin A deficiency is common in underdeveloped countries, and every year, a quarter to half a million children go permanently blind as a result of VAD. It also leads to stunted physical growth and impaired resistance to infections, causing higher fatality rates, even at mild subclinical deficiencies. Good food sources that contain Vitamin A are beef liver, oats, eggs, milk, sweet potatoes, pumpkin, carrot, cantaloupe, mango, spinach, broccoli, kale, collards, butternut squash" },
{ name: "Vitamin B1", information: "Vitamin C, or ascorbic acid, is used by the human body to make collagen and repair body tissues. The human body cannot make Vitamin C on its own, so it is critical that enough Vitamin C is consumed through fruits, vegetables, or Vitamin C supplements. Over time, severe Vitamin C deficiency can lead to an illness known as scurvy, which is regularly reported in famine situations in suffering parts of Africa. Scurvy affects blood vessels, skin and tissue repair, which results in anemia, skin hemorrhaging, and gum disease. Good food sources that contain Vitamin B1 are oranges, grapefruit, kiwi, strawberries, tomato, red pepper, potato"},
{ name: "Vitamin K", information: "Vitamin K plays a major role in helping blood to clot. If blood does not properly coagulate, uncontrolled or excessive bleeding can occur. Vitamin K deficiencies are rare in adults, but very common in newborns and infants. Good food sources that contain Vitamin K are spinach, broccoli, kale, swiss chard, parsley, watercress, soybean oil, canola oil, olive oil"},
{ name: "Calcium", information: "Calcium is a mineral used by the body to stabilize blood pressure, growing new bone, and maintaining bone and teeth strength. Calcium deficiency can cause brittle bones, eye damage, an irregular heartbeat, and an increased risk for developing osteoporosis. Good food sources that contain Calcium are milk, broccoli, kale, oranges, tofu, yogurt, sardines, cheddar cheese, white beans, dried figs, red beans, pinto beans, green peas "},
{ name: "Iodine", information: "Iodine is needed for the the production of the thyroid hormone, which helps the body use energy, stay warm and keep the brain, heart, muscles, and other organs working properly. It cannot be produced by the body, and thus is an important part of the diet. Iodine deficiency is prevalent in areas with low levels of iodine in the soil and water, Iodine deficiency affects an estimated 2 billion people. Keep in mind, if you have access to either iodized salt or seaweed, this deficiency should not affect you."}
]

nutrients.each do |nutrient|
	puts "creating #{nutrient[:name]}"
	Nutrient.create!(nutrient)
end

puts "CREATING FOODS"

foods = [
	{ name: "Beef Liver", category: "Protein", nutrients: ["Vitamin A", "Iron"] },
	{ name: "Oats", category: "Grain", nutrients: ["Vitamin A"] },
	{ name: "Egg", category: "Protein", nutrients: ["Vitamin A", "Vitamin B1"] },
	{ name: "Milk", category: "Dairy", nutrients: ["Vitamin A", "Calcium", "Vitamin B1"] },
	{ name: "Sweet Potato", category: "Vegetable", nutrients: ["Vitamin A"] },
	{ name: "Pumpkin", category: "Vegetable", nutrients: ["Vitamin A"] },
	{ name: "Carrot", category: "Vegetable", nutrients: ["Vitamin A"] },
	{ name: "Mango", category: "Vegetable", nutrients: ["Vitamin A"] },
	{ name: "Carrot", category: "Vegetable", nutrients: ["Vitamin A", "Vitamin B1"] },
	{ name: "Spinach", category: "Vegetable", nutrients: ["Vitamin A", "Vitamin C", "Vitamin B1", "Iron", "Vitamin K"] },
	{ name: "Broccoli", category: "Vegetable", nutrients: ["Vitamin A", "Vitamin C", "Calcium", "Vitamin K"] },
	{ name: "Kale", category: "Vegetable", nutrients: ["Vitamin A", "Calcium", "Vitamin K"] },
	{ name: "Collards", category: "Vegetable", nutrients: ["Vitamin A"] },
	{ name: "Butternut Squash", category: "Vegetable", nutrients: ["Vitamin A"] },
	{ name: "Orange", category: "Fruit", nutrients: ["Vitamin C", "Calcium"]},
	{ name: "Grapefruit", category: "Fruit", nutrients: ["Vitamin C"] },
	{ name: "Kiwi", category: "Fruit", nutrients: ["Vitamin C"] },
	{ name: "Strawberries", category: "Fruit", nutrients: ["Vitamin C"] },
	{ name: "Tomato", category: "Fruit", nutrients: ["Vitamin C"] },
	{ name: "Red Pepper", category: "Fruit", nutrients: ["Vitamin C"] },
	{ name: "Potato", category: "Vegetable", nutrients: ["Vitamin C", "Iron"] },
	{ name: "Beef", category: "Protein", nutrients: ["Iron"] },
	{ name: "Chicken", category: "Protein", nutrients: ["Iron"] },
	{ name: "Oysters", category: "Protein", nutrients: ["Iron"] },
	{ name: "Shrimp", category: "Protein", nutrients: ["Iron"] },
	{ name: "Tuna", category: "Protein", nutrients: ["Iron"] },
	{ name: "Raisins", category: "Fruit", nutrients: ["Iron"] },
	{ name: "Prunes", category: "Fruit", nutrients: ["Iron"] },
	{ name: "Kidney Beans", category: "Protein", nutrients: ["Iron"] },
	{ name: "Chickpeas", category: "Protein", nutrients: ["Iron"] },
	{ name: "Lentils", category: "Protein", nutrients: ["Iron", "Vitamin B1"] },
	{ name: "Tofu", category: "Protein", nutrients: ["Iron", "Calcium"] },
	{ name: "Cashew Nuts", category: "Protein", nutrients: ["Iron"] },
	{ name: "Iodized Salt", category: "Other", nutrients: ["Iodine"] },
	{ name: "Seeweed", category: "Vegetable", nutrients: ["Iodine"] },
	{ name: "Yogurt", category: "Dairy", nutrients: ["Calcium"] },
	{ name: "Cheddar Cheese", category: "Dairy", nutrients: ["Calcium"] },
	{ name: "Sardines", category: "Protein", nutrients: ["Calcium"] },
	{ name: "White Beans", category: "Protein", nutrients: ["Calcium"] },
	{ name: "Red Beans", category: "Protein", nutrients: ["Calcium"] },
	{ name: "Pinto Beans", category: "Protein", nutrients: ["Calcium"] },
	{ name: "Dried Figs", category: "Fruit", nutrients: ["Calcium"] },
	{ name: "Green Peas", category: "Vegetable", nutrients: ["Vitamin B1"] },
	{ name: "Rice", category: "Grain", nutrients: ["Vitamin B1"] },
	{ name: "Pork", category: "Protein", nutrients: ["Vitamin B1"] },
	{ name: "Bread", category: "Grain", nutrients: ["Vitamin B1"] },
	{ name: "Pecans", category: "Protein", nutrients: ["Vitamin B1"] },
	{ name: "Swiss Chard", category: "Vegetable", nutrients: ["Iron", "Vitamin K"] },
	{ name: "Parsley", category: "Vegetable", nutrients: ["Vitamin K"] },
	{ name: "Watercress", category: "Vegetable", nutrients: ["Vitamin K"] },
	{ name: "Soybean Oil", category: "Other", nutrients: ["Vitamin K"] },
	{ name: "Canola Oil", category: "Other", nutrients: ["Vitamin K"] },
	{ name: "Olive Oil", category: "Other", nutrients: ["Vitamin K"] }
]

foods.each do |food|
	puts "creating #{food[:name]}"
	instance = Food.create! food.except(:nutrients)
	food[:nutrients].each do |nutrient|
		instance.nutrients << Nutrient.find_by(name: nutrient)
	end
end

# a.each do |food|
# 	Food.create 



# a2 = a.map do |a|
# 	Food.create( :name => a[0], :category => a[1], :vitamin => a[2])
# end

# c = [
# 	["Potato", "Starch", "C"],
# 	["Orange", "Fruit", "C"],
# ]

# c.each do |c|
# 	Food.create( :name => c[0], :category => c[1], :vitamin => c[2])
# end

# puts "creating Nutrients"

# Nutrient.delete_all

# na = Nutrient.create! name: "vitamin A"

# puts "Join Table"

# a2.each do |food|
# 	food.nutrients << na
# end 
