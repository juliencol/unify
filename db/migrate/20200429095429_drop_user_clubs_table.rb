class DropUserClubsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :user_clubs
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
