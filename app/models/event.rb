class Event < ApplicationRecord
  belongs_to :club
  has_many :registrations
  has_many :users, through: :registrations, dependent: :destroy
  has_many :event_themes
  has_many :themes, through: :event_themes, dependent: :destroy

  validates :name, :presence => { message: "Votre événement doit avoir un titre" }
  validates :long_description, :presence => { message: "Votre événement doit avoir une description" }
  validates :location, :presence => { message: "Votre événement doit avoir une addresse" }
  validates :date, :presence => { message: "Votre événement doit avoir une date" }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  # Uncomment these lines be able to upload  photos
  mount_uploader :image, PhotoUploader
  mount_uploader :banner, PhotoUploader
end