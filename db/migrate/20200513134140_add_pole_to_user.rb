class AddPoleToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :pole, foreign_key: true
  end
end
