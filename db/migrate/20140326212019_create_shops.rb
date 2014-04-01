class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :email
      t.string :phone
      t.string :instagram 
      t.string :twitter
      t.string :facebook
      t.string :tumblr
      t.string :yelp
      t.string :address
      t.string :hours
      t.timestamps
    end
  end
end
