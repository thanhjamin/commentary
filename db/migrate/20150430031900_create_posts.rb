class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post
      t.string :full_name
      t.string :email

      t.timestamps null: false
    end
  end
end
