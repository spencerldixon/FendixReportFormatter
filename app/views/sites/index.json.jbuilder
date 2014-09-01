json.array!(@sites) do |site|
  json.extract! site, :id, :name, :postcode, :longitude, :latitude, :line_item_id
  json.url site_url(site, format: :json)
end
