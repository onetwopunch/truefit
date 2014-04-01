require 'digest/sha1'
class User < ActiveRecord::Base
  
  has_many :images
  before_save :create_hashed_password
  
  EMAIL_REGEX = /\A[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\z/i

	validates :email, :presence => true, :length => { :within => 5..100 }, 
		:format=>EMAIL_REGEX, :confirmation => true, :uniqueness=>true
	validates :hashed_password, :presence => true
	


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
  
	def self.authenticate(email='', password = '')
		user = User.find_by_email(email)
		if user && user.hashed_password == get_hashed_password(password)
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
    unless hashed_password.blank?
      self.hashed_password = User.get_hashed_password(hashed_password)
      puts 'hashed_password set as ' + hashed_password
    end
	end


end
