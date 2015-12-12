json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :preferred_recipe, :mod_packs_id
  json.url recipe_url(recipe, format: :json)
end
