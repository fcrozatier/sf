# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Admin.create(email: 'frd@crz', password: '123456')

25.times do |i|
  chapter = Chapter.new
  chapter.admin = Admin.first
  chapter.title = Faker::Lorem.sentence
  chapter.body = Faker::Lorem.paragraph_by_chars(number: 500)
  chapter.thumbnail.attach(io: open("https://picsum.photos/1920/1080"), filename:"#{i}_thumbnail.jpeg")
  chapter.image.attach(io: open("https://picsum.photos/1920/1080"), filename:"#{i}_image.jpeg")
  chapter.save
end