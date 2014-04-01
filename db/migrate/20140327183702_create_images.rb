class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :path
      t.references :user
      t.string :caption
      t.boolean :is_user_portrait
      t.integer :shop_id
      t.integer :order_id
    end
  end
end
