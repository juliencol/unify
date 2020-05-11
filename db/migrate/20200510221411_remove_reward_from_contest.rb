class RemoveRewardFromContest < ActiveRecord::Migration[6.0]
  def change
    remove_column :contests, :reward
  end
end
