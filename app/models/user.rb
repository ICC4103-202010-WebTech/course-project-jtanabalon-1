class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :comments, :dependent => :destroy
  has_many :members, :dependent => :destroy
  has_many :organizations, through: :members
  has_one :profile, :dependent => :destroy
  has_many :invitations, :dependent => :destroy
  has_many :vote, through: :invitations
  has_many :answers, through: :vote
  has_one :organization

  accepts_nested_attributes_for :invitations

  validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                             message: "invalid email address" }, uniqueness: true
  validates :username, uniqueness: true

end
