# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tomas = User.new
tomas.id = 1
tomas.first_name = 'Tomas'
tomas.last_name = 'Archuleta'
tomas.email = 'truefittattoosd@gmail.com'
tomas.password = 'password'
tomas.instagram = 'tomasj13'
tomas.isArtist = true
tomas.isAdmin = true   
tomas.save

justin = User.new
justin.id = 2
justin.first_name = 'Justin'
justin.last_name = 'Scott'
justin.email = 'j.scott91987@gmail.com'
justin.password= 'password'
justin.isAdmin = true
justin.isArtist = false
justin.save

shop = Shop.new
shop.id = 1
name = 'truefittattoosd'
shop.phone = '(619) 450 6031'
shop.email = "#{name}@gmail.com"
shop.instagram = shop.facebook = shop.twitter = name
shop.yelp = "true-fit-tattoo-san-diego-4"
shop.address = '6561 El Cajon Blvd., San Diego, CA, 92115'
shop.hours = 'Monday-Saturday: 12-8pm, Sunday: Appointment Only'
shop.save

Image.create(:name => "image1.jpg", :path => "app/assets/images/shop/image1.jpg", :shop_id => 1, :order_id => 1, :is_user_portrait => false, :is_slide => false)
Image.create(:name => "image2.jpg", :path => "app/assets/images/shop/image2.jpg", :shop_id => 1, :order_id => 2, :is_user_portrait => false, :is_slide => false)
Image.create(:name => "image3.jpg", :path => "app/assets/images/shop/image3.jpg", :shop_id => 1, :order_id => 3, :is_user_portrait => false, :is_slide => false)
Image.create(:name => "slide1.jpg", :path => "app/assets/images/slideshow/slide1.jpg",  :order_id => 4, :is_user_portrait => false, :is_slide=> true)
Image.create(:name => "slide2.jpg", :path => "app/assets/images/slideshow/slide2.jpg",  :order_id => 5, :is_user_portrait => false, :is_slide=> true)
Image.create(:name => "slide3.jpg", :path => "app/assets/images/slideshow/slide3.jpg", :order_id => 6, :is_user_portrait => false, :is_slide=> true)
Image.create(:name => "slide4.jpg", :path => "app/assets/images/slideshow/slide4.jpg", :order_id => 7, :is_user_portrait => false, :is_slide=> true)
Image.create(:name => "slide5.jpg", :path => "app/assets/images/slideshow/slide5.jpg", :order_id => 8, :is_user_portrait => false, :is_slide=> true)
