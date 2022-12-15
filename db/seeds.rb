puts "Cleaning DB ..."
Cat.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all
puts " "
puts "Database cleaned successfully."
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
  },
  {
    first_name: "Taraneh",
    last_name: "Karimi",
    email: "tara@lewagon.com",
    password: "lewagon",
    is_org: false
  },
  {
    first_name: "Victoria",
    last_name: "Torelli",
    email: "vic@lewagon.com",
    password: "lewagon",
    is_org: false
  },
  {
    first_name: "Isaac",
    last_name: "Mewton",
    email: "isaac@lewagon.com",
    password: "lewagon",
    is_org: false
  },
  {
    first_name: "Fleur",
    last_name: "Delacour",
    email: "fleur@lewagon.com",
    password: "lewagon",
    is_org: false
  },
  {
    first_name: "Ichigo",
    last_name: "Kurosaki",
    email: "ichigo@lewagon.com",
    password: "lewagon",
    is_org: false
  },
  {
    first_name: "Mary",
    last_name: "Poppins",
    email: "mary@lewagon.com",
    password: "lewagon",
    is_org: false
  },
  {
    first_name: "Light",
    last_name: "Yagami",
    email: "light@lewagon.com",
    password: "lewagon",
    is_org: false
  },
  {
    first_name: "Jack",
    last_name: "Napier",
    email: "napier@lewagon.com",
    password: "lewagon",
    is_org: false
  },
  {
    first_name: "Vlad",
    last_name: "Tepes",
    email: "vlad@lewagon.com",
    password: "lewagon",
    is_org: false
  },
  {
    first_name: "Tupac",
    last_name: "Shakur",
    email: "2pac@lewagon.com",
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
    address: "45-H, Vrijheidslaan, 1079 KD, Amsterdam, Netherlands",
    description: "The Lone whisker specialises in international cat adoptions",
    org_phone_number: "202-555-0180"
  },
  {
    first_name: "",
    last_name: "",
    email: "sassytails@lewagon.com",
    password: "lewagon",
    is_org: true,
    org_name: "Sassy Tails",
    address: "500, Moermanskkade, 1013 BC, Amsterdam, Netherlands",
    description: "Sassy Tails prefers to work with families who are open to adopt senior cats and give them a loving home in their last years",
    org_phone_number: "202-555-0172"
  },
  {
    first_name: " ",
    last_name: " ",
    email: "meowsandmoos@lewagon.com",
    password: "lewagon",
    is_org: true,
    org_name: "Meows and Moos",
    address: "466, Van Reigersbergenstraat, 1052 WE, Amsterdam, Netherlands",
    description: "We are a non-profit organization that believes in rescuing cats and cows. To date we operate in four cities. We depend solely on the donations of our patrons.",
    org_phone_number: "202-555-0124"
  },
  {
    first_name: "Isaac",
    last_name: "Mewton",
    email: "sofurtunate@lewagon.com",
    password: "lewagon",
    is_org: true,
    org_name: "So FurTunate",
    address: "431, Van Leijenberghlaan, 1082 GL, Amsterdam, Netherlands",
    description: "I have always loved cats. I seem to not be able to stop bringing them home! I live in a mansion, so I decided that I would open the So FURtunate sanctuary, that way I can just keep having cats forever. This is a privately owned and run sanctuary but we are always happy to receive volunteers!",
    org_phone_number: "202-555-0162"
  },
  {
    first_name: "",
    last_name: "",
    email: "dontworrybetabby@lewagon.com",
    password: "lewagon",
    is_org: true,
    org_name: "Don't worry, be Tabby",
    address: "2, Hekla, 1060 NB, Amsterdam, Netherlands",
    description: "A very chill adoption agency. We believe that a stress free life is the only life a cat should have. We ourselves live by that rule, so come on in and grab one of those complimentary brownies!",
    org_phone_number: "202-555-0116"
  }
]

puts "----------------------------"
puts "creating USERS"
puts " "

num = 0
images_users = [
  "#{Rails.root}/app/assets/images/user_profile0.jpg",
  "#{Rails.root}/app/assets/images/user_profile1.jpg",
  "#{Rails.root}/app/assets/images/user_profile2.jpg",
  "#{Rails.root}/app/assets/images/user_profile3.jpg",
  "#{Rails.root}/app/assets/images/user_profile4.jpg",
  "#{Rails.root}/app/assets/images/user_profile5.jpg",
  "#{Rails.root}/app/assets/images/user_profile6.jpg",
  "#{Rails.root}/app/assets/images/user_profile7.jpg",
  "#{Rails.root}/app/assets/images/user_profile8.jpg",
  "#{Rails.root}/app/assets/images/user_profile9.jpg",
  "#{Rails.root}/app/assets/images/user_profile10.jpg",
  "#{Rails.root}/app/assets/images/user_profile11.jpg",
  "#{Rails.root}/app/assets/images/user_profile12.jpg",
  "#{Rails.root}/app/assets/images/user_profile13.jpg"
]

images_orgs = [
  "#{Rails.root}/app/assets/images/org_profile0.png",
  "#{Rails.root}/app/assets/images/org_profile1.png",
  "#{Rails.root}/app/assets/images/org_profile2.png",
  "#{Rails.root}/app/assets/images/org_profile3.png",
  "#{Rails.root}/app/assets/images/org_profile4.png"
]

array_users.each do |user|
  new_user = User.new(user)

  new_user.photo.attach(
    filename: "user_profile#{num}.jpg",
    io: File.open(images_users.shift),
    content_type: 'image/jpg'
  )

  puts "created USER n.#{num}: #{new_user.first_name} #{new_user.last_name}"
  new_user.save!
  num += 1
end

puts "Create Reviews"

Review.create!(content: "Thanks to Sassy Paws I finally found my BEST friend! Alakazam has been part of our family since 2018 and we couldn't be happier!", user: User.find_by(email: "light@lewagon.com"))

Review.create!(content: "When I saw Mauritz I thought he hated me. He still does, but he can do it from
the comfort of a warm home and cosy bed.", user: User.find_by(email: "vlad@lewagon.com"))

Review.create!(content: "Just a baby when I adopted him! He now weighs over 12kg and I suspect him of being part Maine Coon.... I call him Chonks now.", user: User.find_by(email: "2pac@lewagon.com"))

Review.create!(content: "Abigail is not a fan of other humans but she will lay on my lap all day. I love her to bits! So glad I adopted her.", user: User.find_by(email: "napier@lewagon.com"))

puts "End Reviews"



puts "----------------------------"
puts "creating ORGANIZATIONS"
puts " "

org_obj = []
array_orgs.each do |org|
  new_org = User.new(org)

  new_org.photo.attach(
    filename: "org_profile#{num}.png",
    io: File.open(images_orgs.shift),
    content_type: 'image/png'
  )

  new_org.save!
  num += 1

  org_obj << new_org

  puts "created ORG n.#{num}: #{new_org.org_name}"
end

# cat_image = "https://images.unsplash.com/photo-1615796153287-98eacf0abb13?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80"

cat1 = [
  "https://files.slack.com/files-pri/T02NE0241-F04B9DV7NUF/20220429_111243.jpg?pub_secret=cfd5559254",
  "https://files.slack.com/files-pri/T02NE0241-F04BHBU58MC/img-20221118-wa0003.jpg?pub_secret=473379fdb0"
]

cat2 = [
  "https://files.slack.com/files-pri/T02NE0241-F04B9DVTSJ3/20220721_214043.jpg?pub_secret=333ac4541e",
  "https://files.slack.com/files-pri/T02NE0241-F04BM238V0D/20220709_142019.jpg?pub_secret=091ce89427"
]

cat3 = [
  "https://files.slack.com/files-pri/T02NE0241-F04BPSYB8UB/img_7147.jpg?pub_secret=e9aa92ab49",
  "https://files.slack.com/files-pri/T02NE0241-F04C2KG2CN5/img_4118.jpg?pub_secret=7fdf0865e5"
]

cat4 = [
  "https://files.slack.com/files-pri/T02NE0241-F04BSE62H7E/3ce9aff4-b062-4c23-8557-08a8df94c647.jpg?pub_secret=7e4622a81c",
  "https://files.slack.com/files-pri/T02NE0241-F04B9E159FH/508db353-da33-4e94-87a5-2dd03af4a8c1.jpg?pub_secret=3a27c822c7"
]

cat5 = [
  "https://files.slack.com/files-pri/T02NE0241-F04B9E6J7MM/img_3389.jpg?pub_secret=780428454e",
  "https://files.slack.com/files-pri/T02NE0241-F04BQ0RPNNN/img_1635.jpg?pub_secret=393265a62c",
  "https://files.slack.com/files-pri/T02NE0241-F04BQ0RPQ10/img_1103.jpg?pub_secret=42a50d2ad9",
  "https://files.slack.com/files-pri/T02NE0241-F04BSEBELCU/img_1277.jpg?pub_secret=9d99ac6a70"
]

cat6 = [
  "https://files.slack.com/files-pri/T02NE0241-F04BHCLPT0W/img_20201114_185349.jpg?pub_secret=0ad9f8f306",
  "https://files.slack.com/files-pri/T02NE0241-F04BHCLLVDL/img_20201115_152814.jpg?pub_secret=f5e78aa86d"
]

cat7 = [
  "https://images.unsplash.com/photo-1519052537078-e6302a4968d4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1511044568932-338cba0ad803?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"
]

cat8 = [
  "https://images.unsplash.com/photo-1518791841217-8f162f1e1131?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1493548578639-b0c241186eb0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1466618786657-4df462be674e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1488015795646-7e22a773d72a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"
]

cat9 = [
  "https://images.unsplash.com/photo-1491485880348-85d48a9e5312?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1494256997604-768d1f608cac?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2129&q=80"
]

cat10 = [
  "https://images.unsplash.com/photo-1588621332104-5e128b074d51?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDV8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1614538899770-96fbb708eff8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2282&q=80",
  "https://images.unsplash.com/photo-1602660689940-c3164fde7160?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2336&q=80"
]

cat11 = [
  "https://images.unsplash.com/photo-1564605503879-eb94cf4c02e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFpbmUlMjBjb29ufGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1586942389065-e4fe03240b52?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1591696038577-944232f59007?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bWFpbmUlMjBjb29ufGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=700&q=60"
]

cat12 = [
  "https://images.unsplash.com/photo-1597237154674-1a0d2274cef4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2148&q=80",
  "https://images.unsplash.com/photo-1589883661923-6476cb0ae9f2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDExfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1568043210943-0e8aac4b9734?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60"
]

cat13 = [
  "https://images.unsplash.com/photo-1566340070191-403a3b871d27?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2131&q=80",
  "https://images.unsplash.com/photo-1611034542136-8c6c759ab5a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGdpbmdlciUyMGNhdHxlbnwwfDB8MHx8&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1612804146133-a62865ed18e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Z2luZ2VyJTIwY2F0fGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1469569946320-b4f13e4b7d5e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2luZ2VyJTIwY2F0fGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=700&q=60"
]

cat14 = [
  "https://images.unsplash.com/photo-1501820488136-72669149e0d4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1561669585-ea4b95fd4417?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2148&q=80",
  "https://images.unsplash.com/photo-1496284575094-d5b92db3890d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1502083896352-259ab9e342d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"
]

cat15 = [
  "https://images.unsplash.com/photo-1568307970720-a8c50b644a7c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1530991671072-ac4f81c2c3c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1639102435835-33d0768ad941?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDE5fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60"
]

cat16 = [
  "https://images.unsplash.com/photo-1497473376897-16fbb7552478?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1533738363-b7f9aef128ce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1635&q=80",
  "https://images.unsplash.com/photo-1511275539165-cc46b1ee89bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1512873897628-eea05c840147?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60"
]

cat17 = [
  "https://images.unsplash.com/photo-1588665902767-c728c820cf21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1612288106997-6078c69d5386?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmxhY2slMjBhbmQlMjB3aGl0ZSUyMGNhdHxlbnwwfDB8MHx8&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1634500408946-1b4ddc3e670d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGJsYWNrJTIwYW5kJTIwd2hpdGUlMjBjYXR8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1631398741662-3e0a047c6c5f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGJsYWNrJTIwYW5kJTIwd2hpdGUlMjBjYXR8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60"
]

cat18 = [
  "https://images.unsplash.com/photo-1620071134584-93621c411448?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2344&q=80",
  "https://images.unsplash.com/photo-1592385672401-ab91fccb6fd5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8d2hpdGUlMjBjYXR8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1620500751758-41110291ffff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2234&q=80",
  "https://images.unsplash.com/photo-1620071089978-d1a2c7aba540?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60"
]

cat19 = [
  "https://images.unsplash.com/photo-1497910091122-9f8a7746eb33?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmxhY2slMjBjYXR8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1586863513779-2d0b413bd512?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGJsYWNrJTIwY2F0fGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1617432979681-3ecbc1b961aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"
]

cat20 = [
  "https://images.unsplash.com/photo-1493406300581-484b937cdc41?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1517495146229-65df424a721e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2352&q=80",
  "https://images.unsplash.com/photo-1482848945261-8bbeabb5e3fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"
]

cat21 = [
  "https://images.unsplash.com/photo-1601280494157-6a5106ad2896?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1607623488911-87a2e6076542?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1606118123407-2b45819533a4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
  "https://images.unsplash.com/photo-1591860455878-5458e029601e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"
]

cats_images = [
  cat1,
  cat2,
  cat3,
  cat4,
  cat5,
  cat6,
  cat7,
  cat8,
  cat9,
  cat10,
  cat11,
  cat12,
  cat13,
  cat14,
  cat15,
  cat16,
  cat17,
  cat18,
  cat19,
  cat20,
  cat21,
  ["https://images.unsplash.com/photo-1472491235688-bdc81a63246e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80"],
  ["https://images.unsplash.com/photo-1548366086-7f1b76106622?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=976&q=80"],
  ["https://images.unsplash.com/photo-1583795128727-6ec3642408f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1657&q=80"]
]

filepath = "lib/json/cats_infos.json"
serialized_cats_infos = File.read(filepath)
cats_infos = JSON.parse(serialized_cats_infos)

shuffled_cat_names = cats_infos["name"].shuffle

puts " "
puts "----------------------------"
puts "creating CATS"
puts " "

# num_cats = 10
cats_images.each_with_index do |cat_images, index|
# num_cats.times do
  cat = {
    name: shuffled_cat_names.pop,
    breed: cats_infos["breed"].sample,
    description: cats_infos["description"].sample,
    user: User.where(is_org: true).sample,
    location: "Amsterdam",
    is_vaccinated: [true, false].sample,
    is_neutered: [true, false].sample,
    is_adopted: [true, false, false, false].sample,
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

puts " "
puts "----------------------"
puts "Populated CATabase :)"
puts "----------------------"
