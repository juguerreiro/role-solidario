# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
ReportNew.destroy_all

maiko = User.create!(admin: true, first_name: "Maiko", email: "maiko@maiko.com", password: "12345678")
isa = User.create!(first_name: "Isabela", last_name: "Meyer", email: "isa@isa.com", password: "12345678")
julia = User.create!(first_name: "Julia", last_name: "Guerreiro", email: "julia@julia.com", password: "12345678")

ReportNew.create!(description: Faker::Lorem.sentence(word_count: 30), title: Faker::Lorem.sentence(word_count: 5), user_id:  maiko.id)
ReportNew.create!(description: Faker::Lorem.sentence(word_count: 30), title: Faker::Lorem.sentence(word_count: 5), user_id:  maiko.id)
ReportNew.create!(description: Faker::Lorem.sentence(word_count: 30), title: Faker::Lorem.sentence(word_count: 5), user_id:  maiko.id)
ReportNew.create!(description: Faker::Lorem.sentence(word_count: 30), title: Faker::Lorem.sentence(word_count: 5), user_id:  maiko.id)
ReportNew.create!(description: Faker::Lorem.sentence(word_count: 30), title: Faker::Lorem.sentence(word_count: 5), user_id:  maiko.id)
ReportNew.create!(description: Faker::Lorem.sentence(word_count: 30), title: Faker::Lorem.sentence(word_count: 5), user_id:  maiko.id)
