class Flat < ApplicationRecord
  validates :address, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
