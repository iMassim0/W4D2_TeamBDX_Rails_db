# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
i = 1
20.times do |i|
   # User.create(name: Faker::Name.unique.name)
   @truc = User.id(i+1)
   temp = Post.new(title: Faker::Lorem.word, body: Faker::Lorem.paragraph, description: Faker::Lorem.sentence, user_id: @truc)
   temp.save

end

# cats = ["sport", "musique", "cinema", "technologie", "internet", "politique", "actualite"]
# cats.each do |cat|
#  cat = Category.create(name: "#{cat.capitalize}")
# end
