# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning DB ..."
User.destroy_all
Cat.destroy_all
Chatroom.destroy_all
Message.destroy_all
puts " "
puts "Database deleted successfully."
puts " "

array_users = [
  {
    first_name: "Chonky",
    last_name: "McChonk",
    email: "chonky@lewagon.com",
    password: "lewagon",
    is_org: false
  },
  {
    first_name: "Astrid",
    last_name: "Cow",
    email: "astrid@lewagon.com",
    password: "lewagon",
    is_org: false
  },
  {
    first_name: "Nicolas",
    last_name: "Blanchard",
    email: "nicolas@lewagon.com",
    password: "lewagon",
    is_org: false
  },
  {
    first_name: "Rishabh",
    last_name: "Agnihotri",
    email: "rish@lewagon.com",
    password: "lewagon",
    is_org: false
  }
]

array_orgs = [
  {
    first_name: "Victoria",
    last_name: "Torelli",
    email: "vic@lewagon.com",
    password: "lewagon",
    is_org: true,
    org_name: "The Lone Whisker",
    address: "Alkmaar, Netherlands",
    description: "The Lone whisker specialises in international cat adoptions"

  },

  {
    first_name: "Tara",
    last_name: "Karimi",
    email: "tara@lewagon.com",
    password: "lewagon",
    is_org: true,
    org_name: "Sassy Tails",
    address: "Winter Springs, FL, USA",
    description: "Sassy Tails prefers to work with families who are open to adopt senior cat and give their last years a loving ending"
  }
]
array_users.each do |user|
  user_new = User.create!(user)

  puts "User (#{user_new.email}) created"
end

org_obj = []
array_orgs.each do |org|
  org_new = User.create!(org)
  org_obj << org_new
  puts "User (#{org_new.email}) created"
end

num_cats = 10
num_cats.times do
  cat = {
    name: Faker::Creature::Cat.name,
    breed: Faker::Creature::Cat.breed,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    user: org_obj.sample
  }
  cat_new = Cat.create!(cat)
  puts "User (#{cat_new.name}) created"
end

puts "Seed end"
