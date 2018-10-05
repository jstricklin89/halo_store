

clothing =  Category.create(name: "Clothing")
accessories =  Category.create(name: "Accessories")
figurines =  Category.create(name: "Figurines")

john = User.create(username: "John", password_digest: "halofive", nickname: "Naeblis", secret: "Halo 5")
jonathan = User.create(username: "Jonathan", password_digest: "halothree", nickname: "HeadyT0pper", secret: "Halo 3")

item1 = Item.create(name: "HALO 6in CRACKED VISOR MASTER CHIEF", price: 17.00, description: "Officially licensed by Halo; designed and created by J!NX Master Chief Vinyl Action Figure with Battle Damage from Halo video game
6in tall figure is fully poseable with 6 points of articulation on arms Figure stand by itself, legs do not articulate Weapons snap into figures hand", category_id: figurines.id, img_url: "https://www.jinx.com/amazonimage/productimage/6103/99/2/400.jpg", size: nil, color: "Green")
item2 = Item.create(name: "HALO 5: GUARDIANS PLAY ARTS -KAI- SPARTAN LOCKE", price: 150.00, description: "The small details of this figure are intricately sculpted without hampering its mobility and poseability. 
Holsters in the back and thighs have also been faithfully reproduced. The body has a weathered finish, with luminescence in the paint as well as in translucent parts like the visor. These details and more make this a quintessential action figure. 
The sophisticated style is that of a warrior for a new age.", category_id: figurines.id, img_url: "https://www.jinx.com/amazonimage/productimage/6115/12/1/1000.jpg", size: nil, color: "Grey")
item3 = Item.create(name: "HALO ASSAULT RIFLE KEYCHAIN", price: 8.00, description: "Officially licensed by Halo; designed and created by J!NX
Assault Rifle key chain from Halo video game Molded 3D design; sturdy 100% zinc alloy construction Key chain design measures approximately 3 inches long Ages 15 and up", category_id: accessories.id, img_url: "https://www.jinx.com/amazonimage/productimage/7634/447/2/400.jpg", size: nil, color: "Silver")
item4 = Item.create(name: "HALO BLUE TEAM BELT", price: 20.00, description: "Officially licensed by Halo; designed and created by J!NX
Blue Team logo engraved on buckle, from Halo video game BELT BODY: Nylon webbing BELT BUCKLE: Sturdy metal alloy", category_id: accessories.id, img_url: "https://www.jinx.com/amazonimage/productimage/6256/29/2/400.jpg", size: "32", color: "Green")
item5 = Item.create(name: "HALO BROOT LOOPS PREMIUM TEE", price: 20.00, description: "Officially licensed by Halo; designed and created by J!NX
Warlord Atriox says Comsume and Destroy in this cereal design inspired by Halo video game Knitted from 50% combed ring-spun cotton, 50% polyester; 30/1
Ultra-fine lightweight 4.1 ounce jersey Features slim-fit body", category_id: clothing.id, img_url: "https://www.jinx.com/amazonimage/productimage/7703/221/2/400.jpg", size: "M", color: "Grey")
item6 = Item.create(name: "HALO 26TH CENTURY LEGEND MEN'S RAGLAN", price: 25.00, description: "Officially licensed by Halo; designed and created by J!NX
Master Chief from Halo video game Knitted from 85% combed ring-spun cotton, 15% viscose; 30/1 Midweight 4.3 ounce jersey Side-seamed construction with contrasting 3/4 length raglan sleeves and neck trim", category_id: clothing.id, img_url: "https://www.jinx.com/amazonimage/productimage/8001/337/2/400.jpg", size: "M", color: "Black")
item7 = Item.create(name: "HALO SPARTAN TEAM PULLOVER HOODIE", price: 50.00, description: "Officially licensed by Halo; designed and created by J!NX
Show your support for the Spartans, the UNSC super soldiers from Halo video game Knitted from 55% combed ring-spun cotton, 45% polyester; 20/1 Midweight 8.5 ounce fleece Features standard-fit body", category_id: clothing.id, img_url: "https://www.jinx.com/amazonimage/productimage/7512/221/1/1000.jpg", size: "L", color: "Charcoal")
item8 = Item.create(name: "HALO 6in SPARTAN LOCKE NIGHT OPS VINYL FIGURE VARIANT", price: 25.00, description: "The Halo Vinyl Designer Series features the two most popular characters in the Halo universe: Master Chief and Locke. This limited-edition variant of Jameson Locke stands 6in tall, wears a midnight-black version of his 
recognizable Hunter GEN2 Armor, and comes packing a Needler." ,category_id: figurines.id, size: nil, color: "Dark Blue", img_url:"https://www.jinx.com/amazonimage/productimage/6105/99/1/1000.jpg")
item9 = Item.create(name: "HALO MASTER CHIEF WALLET", price: 19.99, description: "If you're going to trust anyone to keep your money secure, it's Master Chief. Featuring a full colorful dye sub print outside and the UNSC logo print inside.", category_id: accessories.id, size: nil, color: nil, img_url: "https://www.jinx.com/amazonimage/productimage/6258/99/1/1000.jpg")
item10 = Item.create(name: "HALO SPARTAN KEYCHAIN", price: 7.00,description: "Even if you don't have a Warthog, this keychain will help you make an entrance in true Spartan fashion, but with markedly fewer explosions.", category_id: accessories.id, size: nil, color: "Gold", img_url: "https://www.jinx.com/amazonimage/productimage/7662/9/1/500.jpg")
item11 = Item.create(name: "HALO COVENANT PLASMA GRENADE PLUSH",description: "Oh, no, explodey, roundy things! This plush is a blast. Give it a toss and hear it go boom!", price: 12.99, category_id: accessories.id, size: nil, color: "Blue", img_url: "https://www.jinx.com/amazonimage/productimage/6272/6/1/1000.jpg")
item12 = Item.create(name: "HALO SPARTAN ATHLON ARTFX+ STATUE",description: "Kotobukiya’s innovative and popular Halo ARTFX+ Statue series continues, adding the latest and greatest in armor technology with the SPARTAN ATHLON! First there was the iconic Master Chief along with Mark V and VI armors, then came a basic techsuit body and 
the Mjolnir Mark V/VI DX Two Pack. Now coming to you right out of Halo 5: Guardians is another combo set offering a new internal techsuit body and removable slide/snap on armor pieces. The heavy duty assault armor is three-toned with ghostly white, gray, and black for a super clean look, and orange details and the blue visor really pop. 
The Athlon armor set comes with additional interchangeable parts like hands in different positions, and like the rest of the new Halo ARTFX+ line the internal techsuit body even has limited articulation for posing options! Sculpted by M.I.C., the Spartan Athlon stands nearly 8 1/2 inches tall (1/10th scale) and comes with magnets in his
feet for added stability on his included metal display base. Collect all of the Halo Spartans and Master Chief ARTFX+ statues!", price: 79.00, category_id: figurines.id, size: "8.5in", color: "White", img_url: "https://www.jinx.com/amazonimage/productimage/6089/12/1/1000.jpg")

john_cart = Cart.create(user_id: john.id)
jonathan_cart = Cart.create(user_id: jonathan.id)

cart_item1 = CartItem.create(cart_id: john_cart.id, item_id: item1.id, quantity: 1)
cart_item2 = CartItem.create(cart_id: john_cart.id, item_id: item2.id, quantity: 1)
cart_item3 = CartItem.create(cart_id: john_cart.id, item_id: item3.id, quantity: 3)
cart_item4 = CartItem.create(cart_id: john_cart.id, item_id: item4.id, quantity: 5)
cart_item5 = CartItem.create(cart_id: john_cart.id, item_id: item5.id, quantity: 5)
cart_item6 = CartItem.create(cart_id: jonathan_cart.id, item_id: item6.id, quantity: 1)
cart_item7 = CartItem.create(cart_id: jonathan_cart.id, item_id: item7.id, quantity: 1)
cart_item8 = CartItem.create(cart_id: jonathan_cart.id, item_id: item1.id, quantity: 2)
cart_item9 = CartItem.create(cart_id: jonathan_cart.id, item_id: item2.id, quantity: 3)
cart_item0 = CartItem.create(cart_id: jonathan_cart.id, item_id: item3.id, quantity: 8)

review = Review.create(title: "It's good", user_id: 1, item_id: 1, rating: 5, review: "OMG LIKE IT IS SOOOOO GOOD")
review = Review.create(title: "It's good", user_id: 1, item_id: 2, rating: 5, review: "OMG LIKE IT IS SOOOOO GOOD")
review = Review.create(title: "It's good", user_id: 1, item_id: 3, rating: 5, review: "OMG LIKE IT IS SOOOOO GOOD")
review = Review.create(title: "It's good", user_id: 1, item_id: 4, rating: 5, review: "OMG LIKE IT IS SOOOOO GOOD")

Transaction.create(user_id: 1, item_id: 1, quantity: 5)
Transaction.create(user_id: 1, item_id: 2, quantity: 1)
Transaction.create(user_id: 1, item_id: 3, quantity: 2)
Transaction.create(user_id: 1, item_id: 4, quantity: 3)