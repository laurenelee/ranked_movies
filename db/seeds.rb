# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
show_list = [
  ["The Good Fight", "https://www.cbs.com/shows/the-good-fight/", "https://assets3.thrillist.com/v1/image/2754922/size/tmg-article_default_mobile_2x.jpg", 1, 5, "This spin-off of The Good Wife, which focuses on Christine Baranski's fed-up Diane Lockhart but also featuring some top-tier co-stars (e.g., Cush Jumbo, Audra McDonald, Delroy Lindo), delivers the solid procedural legal action everyone craves, while also offering intelligent outrage and eye-rolling over our current political climate. This season, lawyers are being hunted and everyone's on edge, yet the show handles it all with the appropriate amount of gallows humor. Is the world ending? Maybe! And if it is, The Good Fight wants you to grab a martini, take a swig, and enjoy the ride into the apocalypse."],
  ["Atlanta", "https://www.fxnetworks.com/shows/atlanta", "https://assets3.thrillist.com/v1/image/2747369/size/tmg-article_tall.jpg", 2, 4, "After a long break, during which creator Donald Glover went off and played Lando Calrissian, Atlanta comes back even stronger in its second season, subtitled Robbin' Season. There's higher stakes for everyone involved, but isn't that always the way?"],
  ["The Americans", "https://www.fxnetworks.com/shows/the-americans", "https://assets3.thrillist.com/v1/image/2754920/size/tmg-article_default_mobile_2x.jpg", 3, 5, "By jumping ahead four years to September 1987, a few months ahead of the looming Washington Summit meeting between Ronald Reagan and Mikhail Gorbachev, The Americans is setting itself up for a sure-to-be-killer conclusion. The final season finds Paige grappling with her new double-life as a Russian agent, Philip out of action and focused on making the travel agency work, and Elizabeth being, well, Elizabeth. Will there be a happy ending? My Russian-made crystal ball says, Nyet."]
]
show_list.each do |title, url, picture, rank, stars, synopsis|
  Movie.create( title: title, url: url, picture: picture, rank: rank, stars: stars, synopsis: synopsis)
end
