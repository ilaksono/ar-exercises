require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

@store1 = Store.find_by(id: 1)
@store2 = Store.where(id: 2)
@store3 = Store.find_by(id: 3)

@store2[0].update(name: "NewStore")

@store1.update(name: "Lighthouse")