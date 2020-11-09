require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60).valid?

@store2[0].employees.create(first_name: "John", last_name: "Mirani", hourly_rate: 39).valid?

@store4.employees.create(first_name: "Joe", last_name: "Birani", hourly_rate: 80).valid?

@store5.employees.create(first_name: "Bob", last_name: "Kirani", hourly_rate: 60).valid?
@store5.employees.create(first_name: "", last_name: "Qirani", hourly_rate: 30).valid?
@store5.employees.create(first_name: "ASD", last_name: "", hourly_rate: 30).valid?
@store5.employees.create(first_name: "Asd", last_name: "Als", hourly_rate: 50).valid?

