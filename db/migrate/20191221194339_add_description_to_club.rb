class AddDescriptionToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :description, :text
  end
end
