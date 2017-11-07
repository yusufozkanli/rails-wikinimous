# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying articles..."

Article.destroy_all

puts "Loading articles..."

10.times do
  title = Faker::Hacker.verb
  content = Faker::Hacker.say_something_smart
  Article.create({ title: title, content: content })
end

puts "Successful!"

