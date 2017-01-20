class Genre < ApplicationRecord
  belongs_to :bands
  belongs_to :places
end
