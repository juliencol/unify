class CreateContestAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :contest_answers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :contest, null: false, foreign_key: true
      t.text :content
      t.boolean :is_valid

      t.timestamps
    end
  end
end
