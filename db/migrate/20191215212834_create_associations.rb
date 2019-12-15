class CreateAssociations < ActiveRecord::Migration[6.0]
  def change
    create_table :associations do |t|
      t.string :name
      t.string :logo
      t.datetime :creation_date

      t.timestamps
    end
  end
end
