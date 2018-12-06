# fake user
User.create!(name: "Admin",
             email: "admin@gmail.com",
             password: "123456",
             password_confirmation: "123456",
             role: 0)
20.times do |n|
  name = Faker::Name.name
  email = "user#{n + 1}@gmail.com"
  password = "123456"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               role: 1)
end

cat = ["アニメ", "ドラマ", "恋愛", "ホラー", "アート・コンテンポラリー", "戦争", "ミュージカル", "スポーツ", "SF", "コメディ", "アクション", "アドベンチャー・冒険", "クライム", "ドキュメンタリー", "伝記"]
kuni = ["日本", "アメリカ", "フランス", "韓国", "イギリス", "インド", "イタリア", "ドイツ", "スウェーデン", "スペイン", "中国", "アイルランド", "香港", "フィンランド", "台湾"]
# fake movies

20.times do |n|
  name = Faker::Lorem.sentence(1)
  info = Faker::Lorem.sentence(100)
  cat_random = rand(0..(cat.length - 1))
  kuni_random = rand(0..(kuni.length - 1))
  file_name = rand(1..7)
  name_string = 'app/assets/images/phim'+file_name.to_s+'.jpg'
  image_data = File.open(File.join(Rails.root, name_string))
  Movie.create!(name: name,
                picture: image_data,
                info: info,
                check: 1,
                date: ( Date.current - 100),
                category: cat_random,
                nation: kuni_random,
                duration: 100,
                trailer: "https://www.youtube.com/embed/tgbNymZ7vqY",
                rate_score: 0.0)
end

# fake movies dang chieu

20.times do |n|
  name = Faker::Lorem.sentence(1)
  info = Faker::Lorem.sentence(100)
  cat_random = rand(0..(cat.length - 1))
  kuni_random = rand(0..(kuni.length - 1))
  file_name = rand(1..7)
  name_string = 'app/assets/images/phim'+file_name.to_s+'.jpg'
  image_data = File.open(File.join(Rails.root, name_string))
  Movie.create!(name: name,
                picture: image_data,
                info: info,
                check: 1,
                date: Date.current,
                category: cat_random,
                nation: kuni_random,
                duration: 100,
                trailer: "https://www.youtube.com/embed/tgbNymZ7vqY",
                rate_score: 0.0)
end


# fake fiml sap chieu

20.times do |n|
  name = Faker::Lorem.sentence(1)
  info = Faker::Lorem.sentence(100)
  cat_random = rand(0..(cat.length - 1))
  kuni_random = rand(0..(kuni.length - 1))
  file_name = rand(1..7)
  name_string = 'app/assets/images/phim'+file_name.to_s+'.jpg'
  image_data = File.open(File.join(Rails.root, name_string))
  Movie.create!(name: name,
                picture: image_data,
                info: info,
                check: 1,
                date: (Date.current + 20),
                category: cat_random,
                nation: kuni_random,
                duration: 100,
                trailer: "https://www.youtube.com/embed/tgbNymZ7vqY",
                rate_score: 0.0)
end
# fake dien vien
40.times do |n|
  file_name = rand(0..19)
  image_data = File.open(File.join(Rails.root, 'app/assets/images/a'+file_name.to_s+'.jpeg'))
  name = Faker::Name.name
  Actor.create!(name: name,
                picture: image_data)
end

(1..60).each do |x|

  MovieCharacter.create!(movie_id: x,
                         actor_id: 1,
                         role: "Tom")
  MovieCharacter.create!(movie_id: x,
                         actor_id: 2,
                         role: "Jerry")
  MovieCharacter.create!(movie_id: x,
                         actor_id: 3,
                         role: "Anna")
  MovieCharacter.create!(movie_id: x,
                         actor_id: 4,
                         role: "Mikkey")
  MovieCharacter.create!(movie_id: x,
                         actor_id: 5,
                         role: "Donal")
  MovieCharacter.create!(movie_id: x,
                         actor_id: 6,
                         role: "Peter")
  MovieCharacter.create!(movie_id: x,
                         actor_id: 7,
                         role: "Duck")
  MovieCharacter.create!(movie_id: x,
                         actor_id: 8,
                         role: "Pikachu")

end

15.times do |n|
  Cat.create!(name: cat[n])
end
15.times do |n|
  Nation.create!(name: kuni[n])
end
