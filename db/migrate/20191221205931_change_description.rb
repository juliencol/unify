class ChangeDescription < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :short_description, :long_description
  end
end
