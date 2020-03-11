class Event < ApplicationRecord
  belongs_to :club
  
  has_many :user_events
  has_many :users, through: :user_events
  
  has_many :event_themes
  has_many :themes, through: :event_themes

  validates :location, :presence => true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end