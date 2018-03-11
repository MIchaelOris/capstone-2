class CartedListingsController < ApplicationController
  def index
    @carted_listings = current_user.cart
    render 'index.json.jbuilder'
  end

  def create
    @carted_listing = CartedListing.new(
                                        user_id: current_user.id,
                                        listing_id: params[:listing_id],
                                        date: params[:datetime],
                                        status: "Scheduled"
                                        )
    @carted_listing.save
    render 'show.json.jbuilder'
  end

  def destroy
    carted_listing = CartedListing.find(params[:id])
    carted_listing.update(status: "removed")
    render json: {message: "Listing removed from Appointment"}
  end
end

end
