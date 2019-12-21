class AddLinkedinUrlToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :linkedin_url, :string
  end
end
