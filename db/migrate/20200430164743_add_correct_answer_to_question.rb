class AddCorrectAnswerToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :correct_answer, :string
  end
end
