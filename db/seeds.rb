puts 'Creating Pizzas...'
5.times do |i|
  pizza = Pizza.find_or_create_by!(
    title: Faker::Food.dish,
    price: rand(20..50),
    description: Faker::Food.description,
    ingredients: Faker::Food.ingredient
  )
end
puts 'Finished!'
