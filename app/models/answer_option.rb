class AnswerOption < ApplicationRecord
  belongs_to :question

  def answer_option_text
    "#{answer}"
  end
end
