require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

new_store = Store.new do |store|
  store.name = "Surrey"
  store.annual_revenue = 224000
  store.mens_apparel = false
  store.womens_apparel = true
end
new_store.save

new_store = Store.new do |store|
  store.name = "Whistler"
  store.annual_revenue = 1900000
  store.mens_apparel = true
  store.womens_apparel = false
end
new_store.save

new_store = Store.new do |store|
  store.name = "Yaletown"
  store.annual_revenue = 430000
  store.mens_apparel = true
  store.womens_apparel = true
end
new_store.save

@mens_stores = Store.where(mens_apparel: true)
puts "Men's Stores"
@mens_stores.each do |store|
  puts "#{store.name} #{store.annual_revenue}"
end

@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)
puts"Women's Stores with less than $1M annual revenue"
@womens_stores.each do |store|
  puts store.name
end