class Family < ApplicationRecord
  has_many :users

  accepts_nested_attributes_for :users
end
