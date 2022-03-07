require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
# puts `Store 1 is #{@store1}`
@store2 = Store.find_by(id: 2)
# puts `Store 2 is #{@store2}`
@store1.update(name: 'Coal Harbour')
Store.all