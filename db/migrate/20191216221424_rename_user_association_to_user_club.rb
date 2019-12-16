class RenameUserAssociationToUserClub < ActiveRecord::Migration[6.0]
  def change
    rename_table :user_associations, :user_clubs
  end
end
