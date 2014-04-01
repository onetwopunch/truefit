require 'digest/sha1'
class User < ActiveRecord::Base
  
  has_many :images
  before_save :create_hashed_password
  
  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i

	validates :email, :presence => true, :length => { :within => 5..100 }, 
		:format=>EMAIL_REGEX, :confirmation => true, :uniqueness=>true
	validates :password, :presence => true
	


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
    img.order_id = if images.order(:order_id).length > 0
        images.order(:order_id).last.order_id + 1
      else
        1
      end
    img.save
    return img
  end
  
  def artist_photo_path
    folder = first_name.downcase + '_' + last_name.downcase
    path = "app/assets/images/users/#{folder}/"
    unless Dir.exists? path
      Dir.mkdir path
    end
    return path
  end
  
  def art
    images.order(:order_id).where(:is_user_portrait => false)
  end

  def profile_pic
    images.where(:is_user_portrait => true).first
  end

  def profile_pic_path
    if profile_pic
      profile_pic.tag_path
    else
      Image.default_profile_pic_path 
    end
  end

  def set_profile_pic(name, data)
    old = profile_pic
    if old
      old.is_user_portrait = false
      old.save
    end
    store_image(name, data, true)
  end



	def self.authenticate(email='', password = '')
		user = User.find_by_email(email)
		if user && user.password == get_hashed_password(password)
			return user
		else
			return false
		end
	end

  
	def self.get_hashed_password(password="")
		if password != nil
			Digest::SHA1.hexdigest(password)
		else 
			puts 'fail'
	  end
	end

	def create_hashed_password
    unless password.blank?
      self.password = User.get_hashed_password(password)
    end
	end


end
