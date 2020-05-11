class AddMiniatureToContest < ActiveRecord::Migration[6.0]
  def change
    add_column :contests, :miniature, :string
  end
end
