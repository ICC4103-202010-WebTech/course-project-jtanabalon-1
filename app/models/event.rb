class Event < ApplicationRecord
  belongs_to :organization
  has_many :file_events
  has_many :image_events
  has_many :video_events
  has_many :comments, :dependent => :destroy
  has_many :invitations, :dependent => :destroy
  has_many_attached :images
  has_many_attached :files
  has_many_attached :videos
  has_one_attached :banner_image

  validates :title, :description, presence: true
  validates :start_date, not_in_past:true
end
