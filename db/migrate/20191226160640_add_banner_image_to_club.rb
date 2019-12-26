class AddBannerImageToClub < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :banner_image, :string
  end
end
