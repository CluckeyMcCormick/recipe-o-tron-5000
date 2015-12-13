json.array!(@items) do |item|
  json.extract! item, :id, :name, :basic_item, :mods_id
  json.url item_url(item, format: :json)
end
