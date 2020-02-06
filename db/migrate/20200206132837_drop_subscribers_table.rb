class DropSubscribersTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :subscribers
  end
end
