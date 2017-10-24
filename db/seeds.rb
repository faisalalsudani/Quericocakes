User.destroy_all
Biography.destroy_all
Order.destroy_all
Photo.destroy_all
Post.destroy_all

user = User.create!({ email: "root@domain.nl", password: "test123"})

bio1 = Biography.create!( { title: "Gabriela - dutch", content: "Ik wilde graag iets doen met mijn creativiteit en passie voor smaak.", picture: "http://woerden.hu.nl/wp-content/uploads/sites/12/resized/2017-09-Que-Rico--840x560-cropped.jpg?img2x" } )
bio2 = Biography.create!( { title: "Gabriela - english", content: "I would like to do something with my creativity and passion for taste.", picture: "http://woerden.hu.nl/wp-content/uploads/sites/12/resized/2017-09-Que-Rico--420x280-cropped.jpg" } )

order3 = Order.create!( { status:"Pending", name: "Debby", telephone:"980854321", email:"debby@gmail.com", remarks:"I want more cakes", cake_size:12.5, cake_flavor:"Vanilla", cake_filling:"Strawberry Mousse", cake_decoration:"Baby Shower", cake_style:"Marble", cake_decoration_color:"blue", cake_drip:true, cake_drip_color:"gold", cake_toppings:"Almonds" } )
order3 = Order.create!( { status:"Confirmed", name: "Ana", telephone:"980454321", email:"ana@gmail.com", remarks:"I want more breads", cake_size:23, cake_flavor:"Chocolate", cake_filling:"Strawberry Mousse", cake_decoration:"Fresh flower", cake_style:"Ombre", cake_decoration_color:"pink", cake_drip:true, cake_drip_color:"silver", cake_toppings:"Oreo Cookies" } )
order3 = Order.create!( { status:"Finished", name: "Serene", telephone:"980654321", email:"serene@gmail.com", remarks:"I want more cookies", cake_size:18, cake_flavor:"Citroen", cake_filling:"Strawberry Mousse", cake_decoration:"Baby Shower", cake_style:"Naked", cake_decoration_color:"blue", cake_drip:false, cake_drip_color:"", cake_toppings:"Apricots" } )
order4 = Order.create!( { status:"Pending", name: "Matthijs", telephone:"980654321", email:"matthijs@gmail.com", remarks:"I want more onions", cake_size:18, cake_flavor:"Chocolate", cake_filling:"Strawberry Mousse", cake_decoration:"Baby Shower", cake_style:"Ombre", cake_decoration_color:"blue", cake_drip:false, cake_drip_color:"", cake_toppings:"Oreo Cookies" } )
order5 = Order.create!( { status:"Canceled", name: "Faisal", telephone:"980654321", email:"faisal@gmail.com", remarks:"I want bacon", cake_size:18, cake_flavor:"Chocolate", cake_filling:"Strawberry Mousse", cake_decoration:"Baby Shower", cake_style:"Ombre", cake_decoration_color:"blue", cake_drip:false, cake_drip_color:"", cake_toppings:"Apricots" } )
order6 = Order.create!( { status:"Pending", name: "Mat", telephone:"980654321", email:"mat@gmail.com", remarks:"cooookiessss", cookies:10 } )
order7 = Order.create!( { status:"Pending", name: "Angelina", telephone:"980654321", email:"angelina@gmail.com", remarks:"", cookies:10 } )
order8 = Order.create!( { status:"Confirmed", name: "Me", telephone:"980654321", email:"me@gmail.com", remarks:"chocolate cookies pls", cookies:30 } )
order9 = Order.create!( { status:"Finished", name: "Debora", telephone:"980654321", email:"debora@gmail.com", remarks:"deboraaaaa", cookies:20 } )
order10 = Order.create!( { status:"Pending", name: "Coda", telephone:"980654321", email:"coda@gmail.com", remarks:"too much meringues", meringue:20 } )
order11 = Order.create!( { status:"Finished", name: "Anitta", telephone:"980654321", email:"a@gmail.com", remarks:"uhul", meringue:10 } )
order12 = Order.create!( { status:"Confirmed", name: "Brune", telephone:"980654321", email:"b@gmail.com", remarks:"yessss", meringue:10 } )
order13 = Order.create!( { status:"Pending", name: "Core", telephone:"980654321", email:"c@gmail.com", remarks:"chocolate cakesicles plsss", cakesicles:1 } )
order14 = Order.create!( { status:"Confirmed", name: "Fab", telephone:"980654321", email:"d@gmail.com", remarks:"", cakesicles:1 } )
order15 = Order.create!( { status:"Canceled", name: "Elen", telephone:"980654321", email:"e@gmail.com", remarks:"whohol", cakesicles:10 } )

post1 = Post.create!({ title: "test1", content: "http://woerden.hu.nl/ondernemer-van-de-week-gabriela-baars-romano/", picture: "http://woerden.hu.nl/wp-content/uploads/sites/12/resized/2017-09-Que-Rico--1020x574-cropped.jpg" })
post2 = Post.create!({ title: "test2", content: "http://woerden.hu.nl/ondernemer-van-de-week-gabriela-baars-romano/", picture: "http://woerden.hu.nl/wp-content/uploads/sites/12/resized/2017-09-Que-Rico--1020x574-cropped.jpg" })
post3 = Post.create!({ title: "test3", content: "http://woerden.hu.nl/ondernemer-van-de-week-gabriela-baars-romano/", picture: "http://woerden.hu.nl/wp-content/uploads/sites/12/resized/2017-09-Que-Rico--1020x574-cropped.jpg" })


photo1 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508226760/cake1_yjslto.jpg" } )
photo2 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508226760/cake2_ctvmw4.jpg" } )
photo3 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508226760/cake3_mhswjf.jpg" } )
photo4 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508226760/cake4_fxjr3a.jpg" } )
photo5 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508226760/cake5_ceekkc.jpg" } )
photo6 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508226760/cake6_ewjjpl.jpg" } )
photo7 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508226761/cake7_aeieh1.jpg" } )
photo8 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508226761/cake8_fwqw4a.jpg" } )
photo9 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508226761/cake9_hy0t9m.jpg" } )
photo10 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508226761/cake10_nsnqeo.jpg" } )
photo11 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508226761/cake11_uhn595.jpg" } )
photo12 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1508226761/cake12_vunatv.jpg" } )

admin = User.create(email: "admin@querico.com", password: "123456")
