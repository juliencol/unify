class AddDefaultValueToProfilePictureAttribute < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :profile_picture, :string, default: "https://res.cloudinary.com/isep/image/upload/v1577132733/unify/download_wqralk.png"
  end
end
