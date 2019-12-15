class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :association, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :image
      t.datetime :date
      t.float :price
      t.string :location

      t.timestamps
    end
  end
end
