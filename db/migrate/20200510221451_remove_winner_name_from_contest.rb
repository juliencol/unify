class RemoveWinnerNameFromContest < ActiveRecord::Migration[6.0]
  def change
    remove_column :contests, :winner_name
  end
end
