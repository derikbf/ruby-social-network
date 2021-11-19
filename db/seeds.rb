
####### Admin #######
puts 'Iniciando criação do e-mail admin'
Admin.create(name: "admin", email: "admin@admin.com", password: "123456")
puts 'Finalizando criação de e-mail admin...'


puts 'Iniciando criação de Usuários'
10.times do |i|
  User.create!(
    name: Faker::JapaneseMedia::Naruto.unique.character,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    password: Faker::JapaneseMedia::Naruto.village
  )
end
puts 'Finalizando criação de Usuários...'


puts 'Iniciando criação de Posts'
  Post.create!([ 
    { user_id: 1, body: Faker::JapaneseMedia::Naruto.village }, 
    { user_id: 2, body: Faker::JapaneseMedia::Naruto.village }, 
    { user_id: 3, body: Faker::JapaneseMedia::Naruto.village }, 
    { user_id: 4, body: Faker::JapaneseMedia::Naruto.village }, 
    { user_id: 5, body: Faker::JapaneseMedia::Naruto.village }, 
    { user_id: 6, body: Faker::JapaneseMedia::Naruto.village }, 
    { user_id: 7, body: Faker::JapaneseMedia::Naruto.village }, 
    { user_id: 8, body: Faker::JapaneseMedia::Naruto.village }, 
    { user_id: 9, body: Faker::JapaneseMedia::Naruto.village },
    { user_id: 10, body: Faker::JapaneseMedia::Naruto.village }
  ]) 
puts 'Finalizando criação de Posts...'


puts 'Iniciando criação de Likes'
  5.times do |i|
    Like.create!([
      { user_id: 1,  post_id: 1 },
      { user_id: 2,  post_id: 2 },
      { user_id: 3,  post_id: 3 },
      { user_id: 4,  post_id: 4 },
      { user_id: 5,  post_id: 5 },
      { user_id: 6,  post_id: 6 },
      { user_id: 7,  post_id: 7 },
      { user_id: 8,  post_id: 8 },
      { user_id: 9,  post_id: 9 },
      { user_id: 10, post_id: 10 }
    ])
  end
puts 'Finalizando criação de Like...'




