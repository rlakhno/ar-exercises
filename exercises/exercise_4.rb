require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"


# Create additional stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Output mens stores
puts "Men's Apparel Stores:"
@mens_stores.each do |store|
  puts "#{store.name}: $#{store.annual_revenue}"
end

# Fetch stores that carry women's apparel and generate less than $1M in annual revenue
@womens_stores = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)

# Output women's stores
puts "\nWomen's Apparel Stores generating less than $1M in annual revenue:"
@womens_stores.each do |store|
  puts "#{store.name}: $#{store.annual_revenue}"
end
