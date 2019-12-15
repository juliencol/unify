class AddPromotionToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :promotion, :integer
  end
end
