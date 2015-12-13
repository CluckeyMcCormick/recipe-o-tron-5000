json.array!(@mod_packs) do |mod_pack|
  json.extract! mod_pack, :id, :name
  json.url mod_pack_url(mod_pack, format: :json)
end
