10.times do |n|
  name  = Faker::Name.name
  Actor.create!(name:  name,
    picture: "a#{10+n}")
end
cat = ["アニメ","ドラマ","恋愛","ホラー","アート・コンテンポラリー","戦争","ミュージカル","スポーツ","SF","コメディ","アクション","アドベンチャー・冒険","クライム","ドキュメンタリー","伝記"]
15.times do |n|
  Cat.create!(name:  cat[n])
end
 kuni = ["日本","アメリカ","フランス","韓国","イギリス","インド","イタリア","ドイツ","スウェーデン","スペイン","中国","アイルランド","香港","フィンランド","台湾","カナダ"]
15.times do |n|
  Nation.create!(name:  kuni[n])
end
