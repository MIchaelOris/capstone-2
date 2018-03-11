class CartedListing < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  belongs_to :appointment, optional: true
end
