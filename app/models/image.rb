#Image.create(:name => "image1.jpg", :path => "app/assets/images/shop/image1.jpg", :shop_id => 1, :order_id => 1, :is_user_portrait => false, :is_slide => false)

class Image < ActiveRecord::Base
  attr_accessible :name, :path, :shop_id, :order_id, :is_user_portrait, :is_slide
  belongs_to :user
  belongs_to :shop

  before_destroy :delete_actual_image
  def tag_path
    path.split('/')[3..-1].join('/')
  end

  def delete_actual_image
    if File.exists? path
      File.delete path
    end
  end

  def swap(other_image)
    tmp = order_id;
    puts "Swapping order_id #{order_id} with #{other_image.order_id}"
    self.order_id = other_image.order_id
    other_image.order_id = tmp
    self.save
    other_image.save
  end

  def self.default_profile_pic_path
    "default_profile_pic.jpeg"
  end

end