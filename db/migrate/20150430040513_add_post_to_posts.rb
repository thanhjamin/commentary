class AddPostToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :post, :text
  end
end
