class CreateEventThemes < ActiveRecord::Migration[6.0]
  def change
    create_table :event_themes do |t|
      t.references :event, null: false, foreign_key: true
      t.references :theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
