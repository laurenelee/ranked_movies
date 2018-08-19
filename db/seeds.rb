# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movie_list = [
  ["The Meg", 2018, "Jon Turteltaub", 2],
  ["Mission: Impossible - Fallout", 2018, "Christopher McQuarrie", 3],
  ["Deadpool 2", 2018, "David Leitch", 4]
]
movie_list.each do |title, year, director, rank|
  Movie.create( title: title, year: year, director: director, rank: rank)
end 
