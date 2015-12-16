json.array!(@recipe_inclusions) do |recipe_inclusion|
  json.extract! recipe_inclusion, :id, :process_type_id, :recipe_id
  json.url recipe_inclusion_url(recipe_inclusion, format: :json)
end
