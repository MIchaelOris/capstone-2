class Appointment < ApplicationRecord
  elongs_to :user
  has_many :carted_listings
  has_many :listings, through: :carted_listings
end
