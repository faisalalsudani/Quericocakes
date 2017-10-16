

Order.destroy_all

order3 = Order.create!( { status:"pending", name: "Debby", telephone:"980854321", email:"debby@gmail.com", remarks:"I want more cakes", cake_size:12.5, cake_flavor:"Vanilla", cake_filling:"Strawberry Mousse", cake_decoration:"Baby Shower", cake_style:"Marble", cake_decoration_color:"blue", cake_drip:true, cake_drip_color:"gold" } )

order3 = Order.create!( { status:"To bake", name: "Ana", telephone:"980454321", email:"ana@gmail.com", remarks:"I want more breads", cake_size:23, cake_flavor:"Chocolate", cake_filling:"Strawberry Mousse", cake_decoration:"Fresh flower", cake_style:"Ombre", cake_decoration_color:"pink", cake_drip:true, cake_drip_color:"silver" } )

order3 = Order.create!( { status:"To bake", name: "Serene", telephone:"980654321", email:"serene@gmail.com", remarks:"I want more cookies", cake_size:18, cake_flavor:"Citroen", cake_filling:"Strawberry Mousse", cake_decoration:"Baby Shower", cake_style:"Naked", cake_decoration_color:"blue", cake_drip:true, cake_drip_color:"green" } )
