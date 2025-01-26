require "test_helper"

class ListingTest < ActiveSupport::TestCase
  # Setup a valid listing instance for testing
  def setup
    @user = users(:one)  # Assuming you have a user fixture named :one
    @listing = Listing.new(
      user: @user,
      title: "Sample Listing",
      description: "This is a description of the sample listing.",
      price: 99.99,
      hourly_rate: 25.00,
      duration: 1,
      listing_type: :item,
      category: "Furniture",
      location: "New York, NY",
      status: "active",
      additional_info: {}
    )
  end

  # Test that the listing is valid with all attributes provided
  test "should be valid" do
    assert @listing.valid?
  end

  # Test that a listing is invalid without a title
  test "should be invalid without a title" do
    @listing.title = nil
    assert_not @listing.valid?
  end

  # Test that a listing is invalid without a description
  test "should be invalid without a description" do
    @listing.description = nil
    assert_not @listing.valid?
  end

  # Test that a listing is invalid without a price
  test "should be invalid without a price" do
    @listing.price = nil
    assert_not @listing.valid?
  end

  # Test that a listing with a negative price is invalid
  test "should be invalid with a negative price" do
    @listing.price = -1
    assert_not @listing.valid?
  end

  # Test that a listing with a non-numeric price is invalid
  test "should be invalid with a non-numeric price" do
    @listing.price = "not_a_number"
    assert_not @listing.valid?
  end

  # Test that listing type must be either item, service, or event
  test "should have valid listing_type" do
    @listing.listing_type = nil
    assert_not @listing.valid?
    @listing.listing_type = :item
    assert @listing.valid?
    @listing.listing_type = :service
    assert @listing.valid?
    @listing.listing_type = :event
    assert @listing.valid?
  end

  # Test that a listing is invalid without a user (assuming the listing belongs to a user)
  test "should be invalid without a user" do
    @listing.user = nil
    assert_not @listing.valid?
  end

  # Test the price must be a decimal with two decimal places
  test "price should have two decimal places" do
    @listing.price = 99.999
    assert_not @listing.valid?
    @listing.price = 99.99
    assert @listing.valid?
  end
end
