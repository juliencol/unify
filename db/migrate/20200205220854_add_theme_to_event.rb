class AddThemeToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :theme, :string
  end
end
