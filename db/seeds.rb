puts 'Creating Pizzas...'
30.times do |i|
  pizza = Pizza.create!(
    title: Faker::Food.dish,
    price: rand(20..50),
    description: Faker::Food.description,
    ingredients: Faker::Food.ingredient
  )
end
puts 'Finished!'
