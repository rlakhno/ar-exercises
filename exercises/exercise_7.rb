require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Ask the user for a store name
print "Enter store name: "
store_name = gets.chomp

# Attempt to create a store with the inputted name
store = Store.new(name: store_name)

# Display error messages if save fails
unless store.save
  puts "Errors:"
  store.errors.full_messages.each do |message|
    puts message
  end
end
