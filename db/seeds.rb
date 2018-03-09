# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
a = Author.create(name:Faker::DragonBall.character, url:Faker::File.file_name('path/to'))
Book.create(title:Faker::Book.title, genre:Faker::Book.genre, author_id: a.id )
end

# i = 0
# 5.times do
#   c = Comment.create(content:Faker::RickAndMorty.quote, like: ++i)
# end
