class AddInstagramUrlToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :instagram_url, :string
  end
end
