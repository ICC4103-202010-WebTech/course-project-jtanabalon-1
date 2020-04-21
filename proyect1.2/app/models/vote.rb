class Vote < ApplicationRecord
  has_many :anwser
  belongs_to :invitation
end
