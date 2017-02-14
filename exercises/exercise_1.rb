require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

store1 = Store.new do |store|
  store.name = "Burnaby"
  store.annual_revenue = 300000
  store.mens_apparel = true
  store.womens_apparel = true
end
store1.save

store2 = Store.new do |store|
  store.name = "Richmond"
  store.annual_revenue = 1260000
  store.mens_apparel = false
  store.womens_apparel = true
end
store2.save

store3 = Store.new do |store|
  store.name = "Gastown"
  store.annual_revenue = 190000
  store.mens_apparel = true
  store.womens_apparel = false
end
store3.save

puts Store.count