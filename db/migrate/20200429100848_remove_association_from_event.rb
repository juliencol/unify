class RemoveAssociationFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :association_id
  end
end
