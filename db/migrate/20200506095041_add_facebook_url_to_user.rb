class AddFacebookUrlToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :facebook_url, :string
  end
end
