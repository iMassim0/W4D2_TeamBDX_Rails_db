# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times do
  user = User.create(name: Faker::DragonBall.character)
end

50.times do
  post = Post.create(name: Faker::LeagueOfLegends.masteries, body: Faker::DrWho.quote, description: Faker::LeagueOfLegends.quote, user_id: Faker::Number.between(1, 20))
end

100.times do
  category = Category.create(name: Faker::Science.element, post_id: Faker::Number.between(1, 50))
end
