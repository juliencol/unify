class AddWebsiteUrlToCompany < ActiveRecord::Migration[6.0]
  def change
    add_column :companies, :website_url, :string
  end
end
