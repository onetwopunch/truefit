class AddColumnShopImages < ActiveRecord::Migration
  def change
    add_column :images, :shop_id, :integer
    add_column :images, :order_id, :integer
  end
end
