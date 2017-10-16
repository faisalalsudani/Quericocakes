Biography.destroy_all
Order.destroy_all
Photo.destroy_all

bio1 = Biography.create!( { title: "Gabriela - dutch", content: "Ik wilde graag iets doen met mijn creativiteit en passie voor smaak.", picture: "http://woerden.hu.nl/wp-content/uploads/sites/12/resized/2017-09-Que-Rico--840x560-cropped.jpg?img2x" } )
bio2 = Biography.create!( { title: "Gabriela - english", content: "I would like to do something with my creativity and passion for taste.", picture: "http://woerden.hu.nl/wp-content/uploads/sites/12/resized/2017-09-Que-Rico--420x280-cropped.jpg" } )

order3 = Order.create!( { status:"pending", name: "Debby", telephone:"980854321", email:"debby@gmail.com", remarks:"I want more cakes", cake_size:12.5, cake_flavor:"Vanilla", cake_filling:"Strawberry Mousse", cake_decoration:"Baby Shower", cake_style:"Marble", cake_decoration_color:"blue", cake_drip:true, cake_drip_color:"gold" } )
order3 = Order.create!( { status:"To bake", name: "Ana", telephone:"980454321", email:"ana@gmail.com", remarks:"I want more breads", cake_size:23, cake_flavor:"Chocolate", cake_filling:"Strawberry Mousse", cake_decoration:"Fresh flower", cake_style:"Ombre", cake_decoration_color:"pink", cake_drip:true, cake_drip_color:"silver" } )
order3 = Order.create!( { status:"To bake", name: "Serene", telephone:"980654321", email:"serene@gmail.com", remarks:"I want more cookies", cake_size:18, cake_flavor:"Citroen", cake_filling:"Strawberry Mousse", cake_decoration:"Baby Shower", cake_style:"Naked", cake_decoration_color:"blue", cake_drip:true, cake_drip_color:"green" } )

photo1 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508168313/IMG-20171016-WA0002_q7pvla.jpg" } )
