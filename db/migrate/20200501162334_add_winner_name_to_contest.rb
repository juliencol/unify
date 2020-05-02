class AddWinnerNameToContest < ActiveRecord::Migration[6.0]
  def change
    add_column :contests, :winner_name, :string
  end
end
