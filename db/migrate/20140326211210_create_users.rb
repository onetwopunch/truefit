class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :instagram 
      t.string :twitter
      t.string :facebook
      t.string :tumblr
      t.string :isAdmin
      t.string :isArtist
      t.string :hashed_password
      t.string :short_bio
      t.text :bio
      t.timestamps
    end
  end
end
