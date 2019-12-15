class AddIsNdcToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :is_ndc, :boolean
  end
end
