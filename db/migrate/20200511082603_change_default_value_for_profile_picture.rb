class ChangeDefaultValueForProfilePicture < ActiveRecord::Migration[6.0]
  def up
    change_column_default :users, :profile_picture, "https://res.cloudinary.com/isep/image/upload/v1589185526/unify/96787342_627913184431169_851529222651379712_n_gupc6y.png"
  end

  def down
    change_column_default :users, :profile_picture, "https://res.cloudinary.com/isep/image/upload/v1589185526/unify/96787342_627913184431169_851529222651379712_n_gupc6y.png"
  end
end
