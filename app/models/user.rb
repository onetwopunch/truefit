class User < ActiveRecord::Base
  has_many :images

  def self.artists
    return User.where(:isArtist => true)
  end

  def store_image(name, data, is_user_portrait= false, caption = nil)
    save_path = artist_photo_path + name
    File.open(save_path, "wb") do |f|
      f << Base64.decode64(data)
    end
    img = Image.new
    img.path = save_path
    img.name = name
    img.caption = caption
    img.is_user_portrait = is_user_portrait
    img.user_id = id
    img.save
  end
  
  def artist_photo_path
    if isArtist
      folder = first_name.downcase + '_' + last_name.downcase
      return "app/assets/images/artists/#{folder}/"
    end
  end
  


end
