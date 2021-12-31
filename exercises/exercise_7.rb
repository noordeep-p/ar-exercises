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

puts "Please provide a store name:"

@user_input = gets.chomp

new_store = Store.new(name: @user_input)

new_store.save

new_store.errors.messages.each do |msg|
  puts msg
end