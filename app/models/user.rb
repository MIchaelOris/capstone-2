class User < ApplicationRecord
  has_secure_password
  has_many :showings
  has_many :scheduled_listings
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def showing_list
    scheduled_listings.where(status: "scheduled")
  end
end

