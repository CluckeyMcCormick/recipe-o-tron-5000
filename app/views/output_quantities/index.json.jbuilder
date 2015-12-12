json.array!(@output_quantities) do |output_quantity|
  json.extract! output_quantity, :id, :count, :recipe_id, :item_id
  json.url output_quantity_url(output_quantity, format: :json)
end
