class Genre < ApplicationRecord
  has_many :bands
  has_many :places
end
