class User < ApplicationRecord
  after_create :send_welcome_email

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, # :confirmable,
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

  # Validations
  validates :email, :presence => true, format: { with: /\A(([A-Za-z0-9]*\.+*_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\+)|([A-Za-z0-9]+\+))*[A-Z‌​a-z0-9]+.+(([A-Za-z0-9]*\.+*_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\+)|([A-Za-z0-9]+\+))*[A-Z‌​a-z0-9]+@isep.fr/,
  message: "adresse isep uniquement" }
  validates :first_name, :presence => { message: "Vous devez entrer votre prénom" }
  validates :last_name, :presence => { message: "Vous devez entrer votre nom" }
  validates :promotion, :presence => { message: "Vous devez sélectionner votre promotion" }
  validates :section, :presence => { message: "Vous devez sélectionner votre section" }
  # validates :family, :presence => { message: "Vous devez sélectionner votre famille étudiante" }

  # Uncomment these lines be able to upload  photos
  # mount_uploader :profile_picture, PhotoUploader

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end