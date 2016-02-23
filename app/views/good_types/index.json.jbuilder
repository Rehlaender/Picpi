json.array!(@good_types) do |good_type|
  json.extract! good_type, :id, :name
  json.url good_type_url(good_type, format: :json)
end
