class Site < ActiveRecord::Base
	# Relationships
  has_many :line_items
  has_many :reports, through: :line_items

  # Geocoder
  geocoded_by :postcode
  after_validation :geocode, :if => :postcode_changed?
end
