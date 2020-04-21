class Organization < ApplicationRecord
  has_many :admin
  has_many :event
  has_many :member
end
