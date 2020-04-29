class AddClubToPole < ActiveRecord::Migration[6.0]
  def change
    add_reference :poles, :club, null: false, foreign_key: true
  end
end
