class Event < ApplicationRecord
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
 

  belongs_to :club
end
 