class AddTwitterUrlToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :twitter_url, :string
  end
end
