require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Enter store name"
@storename = gets.chomp
@store7 = Store.create(name: @storename)
# @storename.errors { |error| puts error.message }
if !@store7.valid?
  puts "Error occured while creating store"
  @store7.errors.messages.each {|error|
    puts error
  } 
end