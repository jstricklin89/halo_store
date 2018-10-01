# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
category =  Category.create(name: "117")
user = User.create(name: "John", nickname: "Naeblis")
item = Item.create(name: "halo", price: 10.00, description: "hallo stuff", category_id: category.id, size: "5", color: "green")
cart= Cart.create(quantity: nil, user_id: user.id)
cart_item = CartItem.create(cart_id: cart.id, item_id: item.id)