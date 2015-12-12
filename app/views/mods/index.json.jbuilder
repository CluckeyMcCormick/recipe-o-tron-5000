json.array!(@mods) do |mod|
  json.extract! mod, :id, :name, :items_id
  json.url mod_url(mod, format: :json)
end
