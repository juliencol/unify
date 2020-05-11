class RemoveRewardPhotoFromContest < ActiveRecord::Migration[6.0]
  def change
    remove_column :contests, :reward_photo
  end
end
