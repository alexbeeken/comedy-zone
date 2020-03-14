class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :auth_hash
      t.string :username
      t.string :email
      t.string :image_url
      t.timestamps
    end
  end
end
