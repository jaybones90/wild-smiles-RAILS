Service.destroy_all
Review.destroy_all

10.times do |index|
  Service.create!(name: Faker::App.name ,
                        description: Faker::Lorem.paragraph(4),
                        cost: Faker::Commerce.price)
end

100.times do |index|
  Review.create!(author: Faker::GameOfThrones.character,
                        content: Faker::Lorem.paragraph(2),
                        service_id: Faker::Number.between(1, 10))
end

p "Created #{Service.count} services"
p "Created #{Review.count} reviews"
