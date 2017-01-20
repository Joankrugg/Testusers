class Show < ApplicationRecord
  belongs_to  :show_maker, required: true
  validates   :show_date, presence: true
end
