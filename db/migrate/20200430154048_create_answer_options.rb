class CreateAnswerOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_options do |t|
      t.references :question, null: false, foreign_key: true
      t.string :letter
      t.string :answer

      t.timestamps
    end
  end
end
