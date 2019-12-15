class AddProfilePictureToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profile_picture, :string
  end
end
