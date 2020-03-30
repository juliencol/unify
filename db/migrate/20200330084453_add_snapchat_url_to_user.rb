class AddSnapchatUrlToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :snapchat_url, :string
  end
end
