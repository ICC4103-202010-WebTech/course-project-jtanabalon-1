class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :comments, :dependent => :destroy
  has_many :members, :dependent => :destroy
  has_many :organizations, through: :members
  has_one :profile, :dependent => :destroy
  has_many :invitations, :dependent => :destroy
  has_many :vote, through: :invitations
  has_many :answers, through: :vote
  has_one :organization

  accepts_nested_attributes_for :invitations
  accepts_nested_attributes_for :profile

  validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                             message: "invalid email address" }, uniqueness: true

  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid:provider_data.uid).first_or_create do |user|
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0,20]
      usern= provider_data.info.firstname + provider_data.info.lastname
      user.username = usern
      user.admin = false

    end
  end
end
