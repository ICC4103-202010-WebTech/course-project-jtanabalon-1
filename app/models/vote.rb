class Vote < ApplicationRecord
  has_many :answer
  belongs_to :invitation
  validates :vote_id, uniqueness: true
end
