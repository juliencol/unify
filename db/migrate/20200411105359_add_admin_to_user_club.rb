class AddAdminToUserClub < ActiveRecord::Migration[6.0]
  def change
    add_column :user_clubs, :admin, :boolean, null: false, default: false
  end
end
