puts "🌱 Seeding spices..."

20.times do
    Customer.create(
        name: Faker::Name.name,
        phone_number: Faker::PhoneNumber.cell_phone,
        email: Faker::Internet.email,
        address: Faker::Address.full_address
    )
end

20.times do
    Order.create(
        fulfilled: Faker::Boolean.boolean,
        paid: Faker::Boolean.boolean,
        customer_id: rand(1..20),
    )
end

10.times do
    Product.create(
        name: Faker::Dessert.variety,
        flavor: Faker::Dessert.flavor,
        cost: Faker::Commerce.price(range: 0..20.0)
    )
end

puts "✅ Done seeding!"
