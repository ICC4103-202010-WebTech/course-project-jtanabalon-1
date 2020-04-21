class User < ApplicationRecord
  has_many :admin
  has_many :comment
  has_many :event
  has_many :invitation
  has_many :member
  validates :name, uniqueness: true
  validates :email, uniqueness: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,
                             message:"ej: something@mail.cl"}
end
