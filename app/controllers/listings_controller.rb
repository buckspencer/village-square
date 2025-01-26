class ListingsController < ApplicationController
  before_action :set_listing, only: %i[show edit update destroy]

  # GET /listings
  def index
    @listings = Listing.all
  end

  # GET /listings/:id
  def show
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # POST /listings
  def create
    @listing = Listing.new(listing_params)
    if @listing.save
      redirect_to @listing, notice: 'Listing was successfully created.'
    else
      render :new
    end
  end

  # GET /listings/:id/edit
  def edit
  end

  # PATCH/PUT /listings/:id
  def update
    if @listing.update(listing_params)
      redirect_to @listing, notice: 'Listing was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /listings/:id
  def destroy
    @listing.destroy
    redirect_to listings_url, notice: 'Listing was successfully destroyed.'
  end

  private

  # Set the listing based on the ID in the params
  def set_listing
    @listing = Listing.find(params[:id])
  end

  # Define the list of permitted params
  def listing_params
    params.require(:listing).permit(:user_id, :title, :description, :price, :hourly_rate, :duration, :listing_type, :category, :location, :status, :additional_info)
  end
end
