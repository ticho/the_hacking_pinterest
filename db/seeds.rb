require 'faker'

# create 5 users
5.times do
  User.create(name: Faker::Name.name_with_middle)
end

# create 10 pins
10.times do
  Pin.create(url: Faker::Internet.url, user_id: User.all.sample.id)
end

# create 10 comments with a user and a pin
10.times do
  Comment.create(body: Faker::RickAndMorty.quote,
                user_id: User.all.sample.id,
                pin_id: Pin.all.sample.id)
end
