class CreateContests < ActiveRecord::Migration[6.0]
  def change
    create_table :contests do |t|
      t.references :club, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :image
      t.string :correct_answer
      t.string :instagram_post_link
      t.string :type
      t.string :answer_1
      t.string :answer_2
      t.string :answer_3
      t.string :answer_4

      t.timestamps
    end
  end
end
