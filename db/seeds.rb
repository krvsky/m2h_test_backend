if Rails.env.development?

  (10 - Vertical.count).times do
    Vertical.create(name: Faker::Commerce.department)
  end

  verticals = Vertical.all

  (30 - Category.count).times do
    verticals.sample.categories << Category.create(name:  Faker::Commerce.department)
  end

  categories = Category.all

  (50 - Category.count).times do
    categories.sample.courses << Course.create(name: Faker::Company.catch_phrase, author: Faker::Name.name)
  end

  puts "Sample records done!"
end
