class UserClub < ApplicationRecord
  belongs_to :user, counter_cache: true
  belongs_to :club, counter_cache: true
end
