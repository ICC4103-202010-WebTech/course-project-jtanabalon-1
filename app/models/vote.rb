class Vote < ApplicationRecord
  belongs_to :invitation
  has_one :answer, :dependent => :destroy
end
