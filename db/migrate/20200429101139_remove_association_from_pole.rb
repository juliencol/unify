class RemoveAssociationFromPole < ActiveRecord::Migration[6.0]
  def change
    remove_column :poles, :association_id
  end
end
