class AddClubToEvent < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :club, null: false, foreign_key: true
  end
end
