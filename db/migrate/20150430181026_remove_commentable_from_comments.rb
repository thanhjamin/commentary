class RemoveCommentableFromComments < ActiveRecord::Migration
  def change
  	remove_column :comments, :commentable_id, :string
  	remove_column :comments, :commentable_type, :string
  end
end
