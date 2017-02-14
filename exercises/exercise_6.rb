require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create([{first_name: "Khurram", last_name: "Virani", hourly_rate: 60},
  {first_name: "Jeremy", last_name: "Jackman", hourly_rate: 30},
  {first_name: "Jason", last_name: "Turner", hourly_rate: 30},
  {first_name: "Ashley", last_name: "Parker", hourly_rate: 40}])

@store2.employees.create([{first_name: "Jane", last_name: "Sanders", hourly_rate: 60},
  {first_name: "Nita", last_name: "Berg", hourly_rate: 25},
  {first_name: "Maureen", last_name: "Wallis", hourly_rate: 35},
  {first_name: "Pris", last_name: "Lacy", hourly_rate: 40}])

@store4.employees.create([{first_name: "Shae", last_name: "Levitt", hourly_rate: 60},
  {first_name: "Nita", last_name: "Berg", hourly_rate: 25},
  {first_name: "Eden", last_name: "Alvarez", hourly_rate: 35},
  {first_name: "Corina", last_name: "Bailey", hourly_rate: 40}])

@store5.employees.create([{first_name: "Charissa", last_name: "Wynne", hourly_rate: 60},
  {first_name: "Lisa", last_name: "Small", hourly_rate: 25},
  {first_name: "Breanne", last_name: "Rey", hourly_rate: 35},
  {first_name: "Celine", last_name: "Dion", hourly_rate: 40}])

@store6.employees.create([{first_name: "Irene", last_name: "Addler", hourly_rate: 600},
  {first_name: "Sherlock", last_name: "Holmes", hourly_rate: 600},
  {first_name: "Maya", last_name: "Read", hourly_rate: 35},
  {first_name: "Ellie", last_name: "Blake", hourly_rate: 40}])