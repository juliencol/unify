class RemoveIsNdcFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :is_ndc
  end
end
