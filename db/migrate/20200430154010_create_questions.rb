class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :contest, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
