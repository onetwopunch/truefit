class Shop < ActiveRecord::Base
  has_many :images

  def store_image(name, data, caption = nil)
    save_path = photo_path + name
    File.open(save_path, "wb") do |f|
      f << Base64.decode64(data)
    end
    img = Image.new
    img.path = save_path
    img.name = name
    img.caption = caption
    img.is_user_portrait = false
    img.shop_id = id
    img.save
  end
  
  def self.photo_path
    "app/assets/images/shop/"
  end
end
