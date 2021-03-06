class Band < ApplicationRecord

  belongs_to :user, required: true
  belongs_to :type, required: true
  belongs_to :genre, required: true
  has_many :shows, through: :show_makers
  has_many :availabilities, dependent: :destroy
  validates :band_name, presence: true
  validates :members_number, presence: true
  validates :rehearsal_address, presence: true
  validates :set_time, presence: true
  validates :transport_autonomy, presence: true
  has_attachments :photos, maximum: 6
  has_attachments :tracks, maximum: 3
  mount_uploader :band_photo, PhotoUploader
end
