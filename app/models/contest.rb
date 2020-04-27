class Contest < ApplicationRecord
  belongs_to :club
  has_many :contest_answers
  has_many :users, through: :contest_answer, dependent: :destroy
end
