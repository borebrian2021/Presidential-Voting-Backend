class RemoveUselessColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :password
    remove_column :users , :username
    add_column :users ,:img_url, :string
  end
end
