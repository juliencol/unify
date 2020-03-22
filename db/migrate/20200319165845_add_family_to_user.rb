class AddFamilyToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :family, null: false, foreign_key: true
  end
end
