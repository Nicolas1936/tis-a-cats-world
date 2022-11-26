
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
    first_name: "",
    last_name: "",
    email: "thelonewhisker@lewagon.com",
    password: "lewagon",
    is_org: true,
    org_name: "The Lone Whisker",
    address: "Alkmaar, Netherlands",
    description: "The Lone whisker specialises in international cat adoptions"

  },

  {
    first_name: " ",
    last_name: " ",
    email: "sassytails@lewagon.com",
    password: "lewagon",
    is_org: true,
    org_name: "Sassy Tails",
    address: "Winter Springs, FL, USA",
    description: "Sassy Tails prefers to work with families who are open to adopt senior cats and give them a loving home in their last years"
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

cat_image = "https://images.unsplash.com/photo-1615796153287-98eacf0abb13?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80"


cat1 = [
  "https://files.slack.com/files-pri/T02NE0241-F04B9DF2Q07/img-20221119-wa0000.jpg?pub_secret=7d21a98389",
  "https://files.slack.com/files-pri/T02NE0241-F04BHBU58MC/img-20221118-wa0003.jpg?pub_secret=473379fdb0",
  "https://files.slack.com/files-pri/T02NE0241-F04BHBU632A/img-20221118-wa0000.jpg?pub_secret=76cf397659",
  "https://files.slack.com/files-pri/T02NE0241-F04B9DV7NUF/20220429_111243.jpg?pub_secret=cfd5559254"
]

cat2 = [
  "https://files.slack.com/files-pri/T02NE0241-F04BM238V0D/20220709_142019.jpg?pub_secret=091ce89427",
  "https://files.slack.com/files-pri/T02NE0241-F04B9DVTSJ3/20220721_214043.jpg?pub_secret=333ac4541e"
]

cat3 = [
  "https://files.slack.com/files-pri/T02NE0241-F04BPSYB8UB/img_7147.jpg?pub_secret=e9aa92ab49",
  "https://files.slack.com/files-pri/T02NE0241-F04C2KG2CN5/img_4118.jpg?pub_secret=7fdf0865e5"
]

cat4 = [
  "https://files.slack.com/files-pri/T02NE0241-F04B9E159FH/508db353-da33-4e94-87a5-2dd03af4a8c1.jpg?pub_secret=3a27c822c7",
  "https://files.slack.com/files-pri/T02NE0241-F04BSE62H7E/3ce9aff4-b062-4c23-8557-08a8df94c647.jpg?pub_secret=7e4622a81c"
]

cat5 = [
  "https://files.slack.com/files-pri/T02NE0241-F04B9E6J7MM/img_3389.jpg?pub_secret=780428454e",
  "https://files.slack.com/files-pri/T02NE0241-F04BQ0RPNNN/img_1635.jpg?pub_secret=393265a62c",
  "https://files.slack.com/files-pri/T02NE0241-F04BQ0RPQ10/img_1103.jpg?pub_secret=42a50d2ad9",
  "https://files.slack.com/files-pri/T02NE0241-F04BSEBELCU/img_1277.jpg?pub_secret=9d99ac6a70"
]

cat6 = [
  "https://files.slack.com/files-pri/T02NE0241-F04BHCLPT0W/img_20201114_185349.jpg?pub_secret=0ad9f8f306",
  "https://files.slack.com/files-pri/T02NE0241-F04BHCLLVDL/img_20201115_152814.jpg?pub_secret=f5e78aa86d",
  "https://files.slack.com/files-pri/T02NE0241-F04BPT4QB7V/photo-2022-10-06-08-51-19.jpeg?pub_secret=97cc3df3d4"
]

cats_images = [
  cat1,
  cat2,
  cat3,
  cat4,
  cat5,
  cat6,
  ["https://images.unsplash.com/photo-1548366086-7f1b76106622?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=976&q=80"],
  ["https://images.unsplash.com/photo-1548802673-380ab8ebc7b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1035&q=80"],
  ["https://images.unsplash.com/photo-1583795128727-6ec3642408f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1657&q=80"],
  ["https://images.unsplash.com/photo-1548546738-8509cb246ed3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80"]
]

filepath = "lib/json/cats_infos.json"
serialized_cats_infos = File.read(filepath)
cats_infos = JSON.parse(serialized_cats_infos)

num_cats = 10
cats_images.each_with_index do |cat_images, index|
# num_cats.times do
  cat = {
    name: Faker::Creature::Cat.name,
    breed: cats_infos["breed"].sample,
    description: Faker::Quotes::Shakespeare.hamlet_quote,
    user: org_obj.sample,
    location: "brussels, belgium",
    is_vaccinated: [true, false].sample,
    is_neutered: [true, false],
    is_adopted: false,
    adoption_date: DateTime.new(
                      (2019..2022).to_a.sample,
                      (1..10).to_a.sample,
                      (1..28).to_a.sample
    ),
    estimated_age: (1..15).to_a.sample,
    gender: ['male', 'female'].sample,
    coat_colour: cats_infos["coat_colour"].sample
  }
  cat_new = Cat.new(cat)

  if cat_images.kind_of?(Array)
    cat_images.each_with_index do |cat_image, i|
      cat_new.photos.attach(
        filename: "cat#{index}_#{i}.jpg",
        io: URI.open(cat_image)
      )
    end
  else
    cat_new.photos.attach(
    filename: "cat#{index}.jpg",
    io: URI.open(cat_images)
  )
  end

  cat_new.save!

  puts "Cat (#{cat_new.name}) created"
end

puts "Seed end"
