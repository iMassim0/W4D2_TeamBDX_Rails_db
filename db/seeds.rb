require 'faker'

100.times do
   wesh = User.create(name: Faker::Name.unique.name)
   post = Post.create(title: Faker::Lorem.word, body: Faker::Lorem.paragraph, description: Faker::Lorem.sentence, user_id: Faker::Number.between(1, 120))
 end


# cats = ["sport", "musique", "cinema", "technologie", "internet", "politique", "actualite"]
# cats.each do |cat|
#  cat = Category.create(name: "#{cat.capitalize}")
# end
