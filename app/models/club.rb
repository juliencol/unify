class Club < ApplicationRecord
    has_many :poles, dependent: :destroy
    has_many :events, dependent: :destroy
    has_many :user_clubs, dependent: :destroy
    has_many :users, through: :user_clubs
    has_many :partners, dependent: :destroy
    has_many :companies, through: :partners
    
    accepts_nested_attributes_for :events, :reject_if => :all_blank, :allow_destroy => true

    validates :name, :presence => { message: "Votre association doit avoir un nom" }
    # validates :logo, :presence => { message: "Votre association doit avoir un logo" }
    validates :short_description, :presence => { message: "Votre association doit avoir une description courte" }
    validates :description, :presence => { message: "Votre association doit avoir une description" }

    # Uncomment this line to be able to upload club logos
    mount_uploader :logo, PhotoUploader
end
