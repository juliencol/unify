class AddIsOpenToContest < ActiveRecord::Migration[6.0]
  def change
    add_column :contests, :is_open, :boolean, :default => true
  end
end
