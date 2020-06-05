class Organization < ApplicationRecord
  belongs_to :user
  has_many :events
  has_many :members
  has_many :organizations, :dependent => :destroy
  has_many :members, :dependent => :destroy
  accepts_nested_attributes_for :events, allow_destroy: true
end
