# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all

50.times do |index|
  f = Product.create!(
        name: Faker::Lorem.characters(10),
        cost: Faker::Number.decimal(2),
        country: Faker::Address.country
      )
  5.times do |index|
    Review.create!(
      author: Faker::GameOfThrones.character,
      content: Faker::Lorem.characters(55),
      rating: Faker::Number.between(1, 5),
      product_id: f.id
    )
  end
end

10.times do |index|
  f = Product.create!(
        name: Faker::Lorem.characters(10),
        cost: Faker::Number.decimal(2),
        country: "USA"
      )
  5.times do |index|
    Review.create!(
      author: Faker::GameOfThrones.character,
      content: Faker::Lorem.characters(55),
      rating: Faker::Number.between(1, 5),
      product_id: f.id
    )
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
