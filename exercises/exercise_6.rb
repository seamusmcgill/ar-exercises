require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Brody", last_name: "Bingbong", hourly_rate: 40)
@store1.employees.create(first_name: "Amanda", last_name: "Hugginkiss", hourly_rate: 70)
@store1.employees.create(first_name: "Nambo", last_name: "Noodle", hourly_rate: 30)
@store1.employees.create(first_name: "Jeff", last_name: "Johns", hourly_rate: 35)
@store2.employees.create(first_name: "Cleetus", last_name: "Frampel", hourly_rate: 20)
@store2.employees.create(first_name: "Billy", last_name: "Woosah", hourly_rate: 80)
@store2.employees.create(first_name: "Maryann", last_name: "Gritch", hourly_rate: 40)
@store2.employees.create(first_name: "Wendy", last_name: "Floop", hourly_rate: 20)
@store2.employees.create(first_name: "Thad", last_name: "Blendle", hourly_rate: 60)

