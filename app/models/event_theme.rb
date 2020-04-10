class EventTheme < ApplicationRecord
  belongs_to :event
  belongs_to :theme
end
