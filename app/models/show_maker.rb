class ShowMaker < ApplicationRecord
  belongs_to :user, required: true
  has_many :shows
  has_many :bands
  has_many :places
end
