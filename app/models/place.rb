class Place < ApplicationRecord
  belongs_to :user, required: true
  has_many :shows, through: :show_makers
  has_many :availabilities, dependent: :destroy
  validates :place_name, presence: true
  validates :category, presence: true
  validates :place_address, presence: true
  validates :capacity, presence: true
  mount_uploader :place_photo, PhotoUploader
end
