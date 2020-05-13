class User < ApplicationRecord
  self.primary_key = 'id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

  # Relations
  has_many :user_clubs
  has_many :clubs, through: :user_clubs

  has_many :registrations
  has_many :events, through: :registrations

  has_many :user_contests
  has_many :contests, through: :user_contests
  
  belongs_to :family
  accepts_nested_attributes_for :family

  belongs_to :pole, optional: true

  # Validations
  validates :email, :presence => true, format: { with: /\A(([A-Za-z0-9]*\.+*_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\+)|([A-Za-z0-9]+\+))*[A-Z‌​a-z0-9]+.+(([A-Za-z0-9]*\.+*_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\+)|([A-Za-z0-9]+\+))*[A-Z‌​a-z0-9]+@isep.fr/,
  message: "adresse isep uniquement" }
  validates :first_name, :presence => { message: "Tu dois entrer ton prénom" }
  validates :last_name, :presence => { message: "Tu dois entrer ton nom" }
  validates :promotion, :presence => { message: "Sélectionne ta promotion" }
  validates :section, :presence => { message: "Sélectionne ta section" }
  # validates :family, :presence => { message: "Sélectionne ta famille étudiante" }

  # Uncomment these lines be able to upload  photos
  mount_uploader :profile_picture, PhotoUploader
end 