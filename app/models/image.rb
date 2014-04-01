class Image < ActiveRecord::Base
  belongs_to :user
  belongs_to :shop

  def tag_path
    path.split('/')[3..-1].join('/')
  end

  def swap(other_image)
    tmp = order_id;
    puts "Swapping order_id #{order_id} with #{other_image.order_id}"
    self.order_id = other_image.order_id
    other_image.order_id = tmp
    self.save
    other_image.save
  end


end