class Pole < ApplicationRecord
  belongs_to :club, counter_cache: true
end
