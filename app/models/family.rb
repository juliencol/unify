class Family < ApplicationRecord
  self.primary_key = 'id'

  has_many :users

  accepts_nested_attributes_for :users
end
