class ContestAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :contest
end
