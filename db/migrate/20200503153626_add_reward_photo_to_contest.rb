class AddRewardPhotoToContest < ActiveRecord::Migration[6.0]
  def change
    add_column :contests, :reward_photo, :string
  end
end
