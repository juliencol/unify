class AddRoleToUserClub < ActiveRecord::Migration[6.0]
  def change
    add_column :user_clubs, :role, :string
  end
end
