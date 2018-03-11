json.id appointment.id
json.carted_listings order.carted_listings.each do |carted_listing|
  json.id carted_listing.id
  json.user_id carted_listing.user_id
  json.status carted_listing.status
  json.quantity carted_listing.quantity
  json.listing carted_listing.listing
end