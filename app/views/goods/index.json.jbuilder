json.array!(@goods) do |good|
  json.extract! good, :id, :name, :description, :good_type_id, :price, :discount, :stock
  json.url good_url(good, format: :json)
end
