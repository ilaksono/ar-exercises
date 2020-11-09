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

@store7 = Store.create(name:'Asd')
@store8 = Store.create(name:'Asd', annual_revenue: 0)
@store8 = Store.create(name:'Asd', annual_revenue: 400000)

@store9 = Store.create(name: 'qwesd', annual_revenue: 4000, mens_apparel: true, womens_apparel: false)


print "Choose a store name > "
a = gets.chomp
er = Store.create(name: a).errors.messages

er.each {
  |key, value| puts "Error: #{key} - #{value[0]}"
}