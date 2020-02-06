class AddBannerToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :banner, :string
  end
end
