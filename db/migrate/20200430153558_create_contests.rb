class CreateContests < ActiveRecord::Migration[6.0]
  def change
    create_table :contests do |t|
      t.references :club, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :image
      t.string :instagram_post_url
      t.datetime :deadline
      t.string :reward

      t.timestamps
    end
  end
end
