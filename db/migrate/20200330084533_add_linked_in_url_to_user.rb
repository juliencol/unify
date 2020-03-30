class AddLinkedInUrlToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :linkedin_url, :string
  end
end
