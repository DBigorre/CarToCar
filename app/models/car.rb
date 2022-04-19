class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :brand, :model, :year_of_production, :adress, presence: true
  validates :price_per_day, numericality: { greater_than: 0 }

end
