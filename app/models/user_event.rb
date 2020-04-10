class UserEvent < ApplicationRecord
  belongs_to :user, counter_cache: true
  belongs_to :event, counter_cache: true
end
