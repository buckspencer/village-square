class CreateListings < ActiveRecord::Migration[8.0]
  def change
    create_table :listings do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.decimal :hourly_rate, precision: 10, scale: 2, null: true
      t.integer :duration, null: true  # Only relevant for services
      t.integer :listing_type, default: 0  # item, service, event (enum later)
      t.string :category
      t.string :location
      t.integer :status, default: 0  # active, sold, archived (enum later)
      t.jsonb :additional_info, default: {}

      t.timestamps
    end
  end
end
