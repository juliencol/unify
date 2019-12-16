class Club < ApplicationRecord
    has_many :events, dependent: :destroy
end
