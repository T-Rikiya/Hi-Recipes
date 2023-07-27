# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(
  email:"admin@example.com", password:"password"
)

User.create([
  { name:"料理一郎", email:"mail1@example.com", password:"password" }
])

Recipe.create([
  { user_id: 1, title:"チキンカレー", body:"美味しい", instruction:"野菜を切る", ingredient:"鶏もも",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-post1.png"), filename:"sample-post1.png")}
])
