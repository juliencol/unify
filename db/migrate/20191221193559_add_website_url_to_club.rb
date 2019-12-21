class AddWebsiteUrlToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :website_url, :string
  end
end
