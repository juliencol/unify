class Club < ApplicationRecord
    include PublicActivity::Model
    tracked owner: ->(controller, model) { controller && controller.current_user }

    has_many :events, dependent: :destroy
end
