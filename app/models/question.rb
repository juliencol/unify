class Question < ApplicationRecord
  belongs_to :contest

  has_many :answer_options
end
