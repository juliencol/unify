class Club < ApplicationRecord
    has_many :poles, dependent: :destroy

    has_many :events, dependent: :destroy

    has_many :user_clubs
    has_many :users, through: :user_clubs
end
