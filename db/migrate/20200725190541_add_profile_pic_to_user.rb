class AddProfilePicToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profilePic, :string
  end
end
