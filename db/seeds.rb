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

post1 = Post.create!({ title: "Ondernemer van de week: Gabriela Baars Romano", content: "http://woerden.hu.nl/ondernemer-van-de-week-gabriela-baars-romano", picture: "http://woerden.hu.nl/wp-content/uploads/sites/12/resized/2017-09-Que-Rico--1020x574-cropped.jpg" })
post2 = Post.create!({ title: "7 x zo nemen unicorns heel Woerden over", content: "https://indebuurt.nl/woerden/winkelen/7x-unicorns-nemen-woerden~11783/3", picture: "https://quericocakes.herokuapp.com/uploads/photo/image/25/21686404_757547807785357_1979822840329670546_n.jpg" })


admin = User.create(email: "admin@querico.com", password: "123456")
