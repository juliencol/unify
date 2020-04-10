class Club < ApplicationRecord
    has_many :poles, dependent: :destroy

    has_many :events, dependent: :destroy
    accepts_nested_attributes_for :events, :reject_if => :all_blank, :allow_destroy => true

    has_many :user_clubs
    has_many :users, through: :user_clubs

    # Uncomment this line to be able to upload photos
    # mount_uploader :logo, PhotoUploader
end
