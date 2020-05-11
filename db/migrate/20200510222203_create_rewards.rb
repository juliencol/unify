class CreateRewards < ActiveRecord::Migration[6.0]
  def change
    create_table :rewards do |t|
      t.references :contest, null: false, foreign_key: true
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
