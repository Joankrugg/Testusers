class Band < ApplicationRecord

  belongs_to :user, required: true
  has_many :shows, through: :show_makers
  has_many :availabilities, dependent: :destroy
  validates :band_name, presence: true
  validates :members_number, presence: true
  validates :rehearsal_address, presence: true
  validates :set_time, presence: true
  mount_uploader :band_photo, PhotoUploader
end
