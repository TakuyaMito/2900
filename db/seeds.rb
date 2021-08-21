20.times do |n|
  User.create!(
    last_name: Faker::Name.unique.last_name,
    first_name: Faker::Name.unique.first_name,
    email: Faker::Internet.unique.email,
    password: "password",
    password_confirmation: "password"
  )
end

20.times do |n|
  Board.create!(
    title: Faker::Games::Pokemon.unique.name,
    body: Faker::Games::Pokemon.unique.move,
    user_id: 1
  )
end
