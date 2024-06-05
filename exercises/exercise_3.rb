require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Load the third store from the database
@store3 = Store.find(3)

# Delete the third store from the database
@store3.destroy

# Output the number of stores
puts "Number of stores: #{Store.count}"
