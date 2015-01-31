json.array!(@breweries) do |brewery|
  json.extract! brewery, :id, :name, :location, :url, :tours_?, :hours, :state
  json.url brewery_url(brewery, format: :json)
end
