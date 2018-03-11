class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :neighborhood
  has_many :images

  has_many :scheduled_listings
  has_many :orders, through: :scheduled_listings

  validates :address, presence: true
  validates :address, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end
