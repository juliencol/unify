class Event < ApplicationRecord
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  belongs_to :club
end
 