class Contest < ApplicationRecord
  belongs_to :club

  has_many :user_contests
  has_many :users, through: :user_contests

  has_many :questions, dependent: :destroy

  has_many :rewards
end
