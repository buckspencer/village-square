class Listing < ApplicationRecord
  belongs_to :user

  # Enum for listing types
  enum :listing_type, [:item, :service, :event]

  # Enum for status
  enum :status, [:active, :sold, :archived]

  # Validations
  validates :title, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }  # Ensuring the price is greater than 0
  validates :status, inclusion: { in: statuses.keys }  # Ensuring the status is valid
  validates :category, presence: true  # Assuming category is important for filtering
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true  # For services
  validates :duration, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true  # For services

  # Methods
  def total_price
    # Calculate total price for services based on hourly_rate and duration
    return price if listing_type != 'service'
    hourly_rate * duration
  end

  # Scopes for common queries
  scope :active, -> { where(status: :active) }
  scope :by_category, ->(category) { where(category: category) }
  scope :by_location, ->(location) { where(location: location) }
end
