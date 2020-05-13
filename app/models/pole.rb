class Pole < ApplicationRecord

  belongs_to :club
  has_many :users,  dependent: :destroy
end
