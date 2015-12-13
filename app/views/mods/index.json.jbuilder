json.array!(@mods) do |mod|
  json.extract! mod, :id, :name
  json.url mod_url(mod, format: :json)
end
