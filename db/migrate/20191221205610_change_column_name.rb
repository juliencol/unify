class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :description, :short_description
  end
end
