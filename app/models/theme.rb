class Theme < ApplicationRecord
  has_many :event_themes
  has_many :events, through: :event_themes, dependent: :destroy
end
