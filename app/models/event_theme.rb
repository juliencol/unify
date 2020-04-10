class EventTheme < ApplicationRecord
  belongs_to :event, counter_cache: true
  belongs_to :theme, counter_cache: true
end
