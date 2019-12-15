class AddSectionToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :section, :string
  end
end
