json.array!(@input_quantities) do |input_quantity|
  json.extract! input_quantity, :id, :count, :recipes_id, :items_id
  json.url input_quantity_url(input_quantity, format: :json)
end
