class AddShopYelp < ActiveRecord::Migration
  def change
    add_column :shops, :yelp, :string
  end
end
