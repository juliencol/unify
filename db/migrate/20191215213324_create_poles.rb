class CreatePoles < ActiveRecord::Migration[6.0]
  def change
    create_table :poles do |t|
      t.references :association, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
