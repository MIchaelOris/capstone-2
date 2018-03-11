class ListingsController < ApplicationController
  
  def index
    @listings = Listing.all

    search_term = params[:search]
    if search_term
      listings = @listings.where("name iLike ?", "%#{search_term}%")
    end 

    sort_attribute = params[:sort]
    if sort_attribute
      @listings = @listings.order(sort_attribute => asc)
    end 

    render 'index.json.jbuilder'
  end 

  def create
    @listing = Listing.new(
      neighborhood: params[:neighborhood],
      address: params[:address],
      price: params[:price],
      bedrooms: params[:bedrooms],
      baths: params[:baths],
      sq_footage: params[:sq_footage],
      style: params[:style],
      description: params[:description],
      agent: params[:agent],
      )

    if @listing.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @listing.errors.full_messages}, status: :unprocessable_entity
    end
  end 

  def show
    @listing = Listing.find(params[:id])
    render 'show.json.jbuilder'
  end 

  def destroy
    listing = Listing.find(params[:id])
    listing.destroy
    render json: {message: "Listing deleted ##{listing.id}"}
  end
end