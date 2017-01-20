class Place < ApplicationRecord
  belongs_to :user, required: true
  has_many :shows, through: :show_makers
  has_many :availabilities, dependent: :destroy
end
