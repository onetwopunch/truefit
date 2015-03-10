Image.seed(:id,
    {:id => 1, :name => "image1.jpg", :path => "public/uploads/shop/image1.jpg", :shop_id => 1, :order_id => 1, :is_user_portrait => false, :is_slide => false},
    {:id => 2, :name => "image2.jpg", :path => "public/uploads/shop/image2.jpg", :shop_id => 1, :order_id => 2, :is_user_portrait => false, :is_slide => false},
    {:id => 3, :name => "image3.jpg", :path => "public/uploads/shop/image3.jpg", :shop_id => 1, :order_id => 3, :is_user_portrait => false, :is_slide => false},
    {:id => 4, :name => "slide1.jpg", :path => "public/uploads/slideshow/slide1.jpg",  order_id: 4, :is_user_portrait => false, :is_slide=> true},
    {:id => 5, :name => "slide2.jpg", :path => "public/uploads/slideshow/slide2.jpg",  order_id: 5, :is_user_portrait => false, :is_slide=> true},
    {:id => 6, :name => "slide3.jpg", :path => "public/uploads/slideshow/slide3.jpg", order_id: 6, :is_user_portrait => false, :is_slide=> true},
    {:id => 7, :name => "slide4.jpg", :path => "public/uploads/slideshow/slide4.jpg", order_id: 7, :is_user_portrait => false, :is_slide=> true},
    {:id => 8, :name => "slide5.jpg", :path => "public/uploads/slideshow/slide5.jpg", order_id: 8, :is_user_portrait => false, :is_slide=> true}
  )
images = Dir[Rails.root.join("public/uploads/users/tomas_archuleta/*").to_s]
count = 0
images.sort.each do |img|
  path = img.gsub(Rails.root.to_s + '/', '')
  img = Image.create(name: path.split('/').last, path: path, is_user_portrait: false, is_slide: false, user: User.first )
  count +=1
end