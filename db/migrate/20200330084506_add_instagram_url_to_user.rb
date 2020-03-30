class AddInstagramUrlToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :instagram_url, :string
  end
end
