class Company < ApplicationRecord
  has_many :partners, dependent: :destroy
  has_many :clubs, through: :partners
end
