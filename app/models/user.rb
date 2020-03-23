class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Relations
  has_many :user_clubs
  has_many :clubs, through: :user_clubs
  has_many :user_events
  has_many :events, through: :user_events
  belongs_to :family

  # Validations
  validates :email, :presence => true, format: { with: /\A(([A-Za-z0-9]*\.+*_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\+)|([A-Za-z0-9]+\+))*[A-Z‌​a-z0-9]+.+(([A-Za-z0-9]*\.+*_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\+)|([A-Za-z0-9]+\+))*[A-Z‌​a-z0-9]+@isep.fr/,
  message: "adresse isep uniquement" }
  validates :first_name, :presence => { message: "Vous devez entrer votre prénom" }
  validates :last_name, :presence => { message: "Vous devez entrer votre nom" }
  validates :promotion, :presence => { message: "Vous devez sélectionner votre promotion" }
  validates :section, :presence => { message: "Vous devez sélectionner votre section" }
  validates :family, :presence => { message: "Vous devez sélectionner votre famille étudiante" }

  # Upload attributes
  # mount_uploader :profile_picture, PhotoUploader
end