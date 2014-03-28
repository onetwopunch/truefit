# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
shop = Shop.new
name = 'truefittattoosd'
shop.phone = '(619) 450 6031'
shop.email = "#{name}@gmail.com"
shop.instagram = shop.facebook = shop.twitter = name
shop.address = '6561 El Cajon Blvd., San Diego, CA, 92115'
shop.hours = 'Monday-Saturday: 12-8pm, Sunday: Appointment Only'
shop.save

ryan = User.new
ryan.first_name = 'Ryan'
ryan.last_name = 'Canty'
ryan.email = 'jrcanty@gmail.com'
ryan.isAdmin = true
ryan.save

tomas = User.new
tomas.first_name = 'Tomas'
tomas.last_name = 'Archuleta'
tomas.instagram = 'tomasj13'
tomas.isArtist = true
tomas.isAdmin = true
tomas.save

images = Dir.glob(tomas.artist_photo_path + '*')
images.each_with_index do |img, idx|
  obj = Image.new
  obj.user = tomas
  obj.path = img
  obj.name = img.split('/').last
  obj.order_id = idx+1
  obj.save
end