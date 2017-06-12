class Place < ApplicationRecord
  belongs_to :user, required: true
  belongs_to :genre, required: true
  has_many :shows, through: :show_makers
  has_many :availabilities, dependent: :destroy
  validates :place_name, presence: true
  validates :place_category, presence: true
  validates :place_address, presence: true
  validates :capacity, presence: true
  mount_uploader :place_photo, PhotoUploader
  geocoded_by :place_address
  after_validation :geocode, if: :place_address_changed?
end
