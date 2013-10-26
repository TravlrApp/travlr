class RemoveUserNameFromPosts < ActiveRecord::Migration
  def change
  	remove_column :posts, :user_name
  end
end
