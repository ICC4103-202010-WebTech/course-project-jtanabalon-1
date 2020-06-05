class Answer < ApplicationRecord
  belongs_to :vote
  has_one :invitation, through: :vote

  validates :dat, not_in_past:true
end
