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

user_input = gets.chomp
@store7 = Store.new
@store7.name = user_input
puts @store7.save
error = @store7.errors

# puts error.inspect

error.each do |err|
  puts @store7.errors[err.to_sym]
end