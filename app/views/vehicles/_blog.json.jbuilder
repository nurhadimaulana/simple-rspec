json.extract! vehicle, :id, :model, :make, :year, :style, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)