puts "🌱 Seeding Owners..."
o1= Owner.create(name:Faker::Name.name, user_name:"dogluver", password:"lillybear")
o2= Owner.create(name:Faker::Name.name, user_name:"habsfan", password:"pucklife")
o3= Owner.create(name:Faker::Name.name, user_name:"bestfixerupper", password:"demogod")
o4= Owner.create(name:Faker::Name.name, user_name:"homedecorexpert", password:"fluffypillows")

puts "🌱 Seeding Houses..."

h1= House.create(house_name: "Three bed cozy home" ,image_url: "https://www.homelight.com/blog/wp-content/uploads/2019/07/how-much-can-you-make-flipping-houses-2.png", owner_id:o1.id)
h2= House.create(house_name: "Two bed wartime home" ,image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjnzAUfuF5HnrkpJd9FXcbhS2N6SnUFR-6dw&usqp=CAU", owner_id: o1.id)
h3= House.create(house_name: "Three bed bungalow" ,image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSyhSxLTHNuhWpfFUPTpoF8glGuWWYVu9Kog&usqp=CAU", owner_id:o2.id)
h4= House.create(house_name: "Four bed in the country" ,image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS533GkTyNsoazzwftXhiqZutzwsFQ1kLIuTA&usqp=CAU", owner_id:o3.id)
h5= House.create(house_name: "Five bedroom Split level home" ,image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyWBkU8ISyLy-wZ4LQmR-PTl8NU5A1x7z5Nw&usqp=CAU", owner_id:o4.id)
h6= House.create(house_name: "Spacious barn style home" ,image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZpVuhodrrjxER2ZabGlIMzYCMNu1E28bRVw&usqp=CAU", owner_id:o4.id)

puts "🌱 Seeding addresses..."

a1=Address.create(street_name: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state_abbr, zip_code:Faker::Address.zip_code, house_id:h1.id)
a2=Address.create(street_name: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state_abbr, zip_code:Faker::Address.zip_code, house_id:h2.id)
a3=Address.create(street_name: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state_abbr, zip_code:Faker::Address.zip_code, house_id:h3.id)
a4=Address.create(street_name: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state_abbr, zip_code:Faker::Address.zip_code, house_id:h4.id)
a5=Address.create(street_name: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state_abbr, zip_code:Faker::Address.zip_code, house_id:h5.id)
a6=Address.create(street_name: Faker::Address.street_address, city: Faker::Address.city, state:Faker::Address.state_abbr, zip_code:Faker::Address.zip_code, house_id:h6.id)

puts "🌱 Seeding rooms..."
r1=Room.create(name:"Kitchen", house_id: h1.id)
r2=Room.create(name:"Living Room", house_id: h1.id)
r3=Room.create(name:"Ensuit Bathroom", house_id: h2.id)
r4=Room.create(name:"Main Bedroom", house_id: h3.id)
r5=Room.create(name:"Basement", house_id: h4.id)
r6=Room.create(name:"Bathroom", house_id: h5.id)
r7=Room.create(name:"Dining room", house_id: h6.id)
r8=Room.create(name:"Home Office", house_id: h2.id)

puts "🌱 Seeding projects..."

p1=Project.create(name:"Cabinets",description: "Ripping out old cabinets and replacing with white cabinets with brass hardware", room_id:r1.id, status: false)
p2=Project.create(name:"Fireplace",description: "Replacing old stone fireplace for modern tile and adding mantle", room_id:r2.id, status: false)
p3=Project.create(name:"Glass door shower",description: "Removing old tub shower and building walk in shower with glass door", room_id:r3.id, status: false)
p4=Project.create(name:"Hardwood floors",description: "Removing carpet and putting down hardwood floors", room_id:r4.id, status: false)
p5=Project.create(name:"Drywall",description: "Adding drywall to use basement for entertainment room", room_id:r5.id, status: false)
p6=Project.create(name:"New sink",description: "Replacing pink sink and vanity with a white and modern one", room_id:r6.id, status: false)
p7=Project.create(name:"Removing popcorn ceiling",description: "Scraping off popcorn ceiling and painting ceiling white ", room_id:r7.id, status: false)
p8=Project.create(name:"Painting",description: "Painting over bright yellow walls with a neutral grey blue color", room_id:r8.id, status: true)

puts "🌱 Seeding parts..."

s1=Part.create(name:"Cabinet set", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwHMjitJwbgy6vqvWb6BeYdqXtv5lIItzCgJNRS_4PS5pGR2YZuyrt1jly7HEWrMFsnEM&usqp=CAU", cost:4800, project_id:p1.id)
s2=Part.create(name:"Mantle", image_url:"https://secure.img1-fg.wfcdn.com/im/30705796/resize-h445%5Ecompr-r85/1218/121822213/Sikora+Fireplace+Shelf+Mantel.jpg", cost:110, project_id:p2.id)
s3=Part.create(name:"Glass door shower", image_url:"https://oasisshowerdoors.com/wp-content/gallery/sliders-2015/cache/hydro-slide.jpg-nggid03468-ngg0dyn-800x1200x100-00f0w010c010r110f110r010t010.jpg", cost:980, project_id:p3.id)
s4=Part.create(name:"Flooring", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDO9quHRJXeHY1B0uAir0JVvrqkFPl5aLRHw&usqp=CAU", cost:500, project_id:p4.id)
s5=Part.create(name:"Drywall", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCSN21RVU5UVBwkqIQwRjtDGDRPm0u54_jWA&usqp=CAU", cost:1200, project_id:p5.id)
s6=Part.create(name:"Sink", image_url:"https://secure.img1-fg.wfcdn.com/im/83857166/resize-h800-w800%5Ecompr-r85/4292/42922947/Vitreous+China+Rectangular+Vessel+Bathroom+Sink+with+Faucet+and+Overflow.jpg", cost:300, project_id:p6.id)
s7=Part.create(name:"White paint", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxMuLrIY_1gqraq6OmMA0E8MIeM4_XSVyhZA&usqp=CAU", cost:50, project_id:p7.id)
s8=Part.create(name:"Grey blue paint", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXO2HTsU--o7GxzvpwiTSnU5xLpr4uymSEFg&usqp=CAU", cost:60, project_id:p8.id)
s9=Part.create(name:"Brass cabnet handles",image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkFroiH9glbfdbo0HB9RhH6TslJuABefnUPg&usqp=CAU", cost:450, project_id:p1.id)
s10=Part.create(name:"Drywall screws", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0mnJwZQKRIRXMWOUgP3LX4GF90LgQtMxVGiBiU2BRvhpfmgq3KOknmyeL_iBhcU7Dob0&usqp=CAU",cost:100, project_id:p5.id)
s11=Part.create(name:"Painters tape", image_url:"http://mobileimages.lowes.com/productimages/204fe305-056d-44f2-9dc9-a0fd4c909c10/16588517.jpg",cost:40, project_id:p8.id)
s12=Part.create(name:"Drop cloth", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVbWhPjECM39B-as7qL-iXnkkAR3jyY5FUOQ&usqp=CAU",cost:60, project_id:p8.id)


puts "🌱 Seeding tools..."

t1=Tool.create(name:"Cordless drill", image_url:"https://images.unsplash.com/photo-1616321507403-9db926c914fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29yZGxlc3MlMjBkcmlsbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60", project_id:p1.id)
t2=Tool.create(name:"Level", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLTi9qq2Rx4wX-47r5RxYjm-VreXmI1EuMcQ&usqp=CAU", project_id:p2.id)
t3=Tool.create(name:"Caulk gun", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR36GJf0KhG2N8BMtkTFBUsz9Y7P00aEZ4v9Q&usqp=CAU", project_id:p3.id)
t4=Tool.create(name:"Pry bar", image_url:"https://www.homestratosphere.com/wp-content/uploads/2018/05/hz-pry-bar-050818.jpg", project_id:p4.id)
t5=Tool.create(name:"Jab Saw", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThaym2EU4-a9v2rhNStrEaOy3DnRAHqcM1kJPNEfEJLwvslCQotcq8i3ba-6opwD8wLdI&usqp=CAU", project_id:p5.id)
t6=Tool.create(name:"Steel pipe wrench", image_url:"https://cdn.mscdirect.com/global/images/ProductImages/9544989-21.jpg", project_id:p6.id)
t7=Tool.create(name:"Ceiling roller", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2e-A-eKEe_UV_C0F-43DmkaSWjjeFT1HaGA&usqp=CAU", project_id:p7.id)
t8=Tool.create(name:"Paint brush", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF63BXQIbTDmRWPhwVHJjMyW8sQUZ5av2jzA&usqp=CAU", project_id:p8.id)
t9=Tool.create(name:"Paint tray", image_url:"https://m.media-amazon.com/images/I/71cGozPLcAL._AC_SX679_.jpg", project_id:p8.id)
t10=Tool.create(name:"Paint scraper", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL6xygcUYn-uSxCHWIUMesr1ufjcWYFB_-Ag&usqp=CAU", project_id:p7.id)
t11=Tool.create(name:"Cabinet claws", image_url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThqKTWzr1dlOZLaYS2gTpFbu7xVYwVHKVxQ_i5sTNzOqUbgqB0Jg1AuGWQ81g0lNUqKBs&usqp=CAU", project_id:p1.id)


puts "✅ Done seeding!"
