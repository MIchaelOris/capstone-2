json.array! @listings.each do |listing|
  json.id listing.id
  json.address listing.address
  json.description listing.description
end