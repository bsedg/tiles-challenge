json.array!(@tiles) do |tile|
  json.extract! tile, :name, :count
  json.url tile_url(tile, format: :json)
end
