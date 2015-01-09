json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :vehicle_type, :vehicle_model, :color, :plate_num, :staff_id
  json.url vehicle_url(vehicle, format: :json)
end
