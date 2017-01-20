class Band < ApplicationRecord
  belongs_to :user, required: true
  has_many :shows, through: :show_makers
  has_many :availabilities, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :description, presence: true
  has_attachment :photo

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
