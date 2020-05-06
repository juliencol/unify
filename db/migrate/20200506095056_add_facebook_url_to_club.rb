class AddFacebookUrlToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :facebook_url, :string
  end
end
