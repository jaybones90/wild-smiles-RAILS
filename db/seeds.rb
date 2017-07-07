Service.destroy_all
Review.destroy_all

50.times do |index|
  Service.create!(name: Faker::App.name ,
                        description: Faker::Lorem.paragraph(2),
                        cost: Faker::Commerce.price)
end

250.times do |index|
  Review.create!(author: Faker::GameOfThrones.character,
                        content: Faker::Lorem.sentences(1),
                        service_id: Faker::Number.between(1, 50))
end

p "Created #{Service.count} services"
p "Created #{Review.count} reviews"
