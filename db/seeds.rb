i = 0
    until User.count == 10 do
    Image.create!(url: Faker::Avatar.image, imageable: User.create!(email: "test#{i}@gmail", password: "123456", "password_confirmation": "123456", name: Faker::Name.name, phone: "+5698332393#{i}"))
    i += 1
end

picture = Picture.all
users = User.all

    until Comment.count == 10 do
    Comment.create(content: Faker::Lorem.paragraph_by_chars(number: 20, supplemental: false), picture_id: picture.sample.id, user_id: users.sample.id)
    end
