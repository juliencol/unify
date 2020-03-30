class AddShortDescriptionToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :short_description, :string, limit: 60
  end
end
