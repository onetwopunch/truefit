class Image < ActiveRecord::Base
  belongs_to :user
  belongs_to :shop

  before_destroy :delete_actual_image
  def tag_path
    path.split('/')[3..-1].join('/')
  end

  def delete_actual_image
    FileUtils.rm path
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