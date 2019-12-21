class AddShortDescriptionToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :short_description, :string
  end
end
