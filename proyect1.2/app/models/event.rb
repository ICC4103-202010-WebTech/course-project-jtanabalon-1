class Event < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  has_many :comment
  has_many :anwser
  has_many :invitation
end
