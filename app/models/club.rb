class Club < ApplicationRecord
    include PublicActivity::Model
    tracked owner: ->(controller, model) { controller && controller.current_user }

    has_many :events, dependent: :destroy
    has_many :user_clubs
    has_many :users, through: :user_clubs
end
