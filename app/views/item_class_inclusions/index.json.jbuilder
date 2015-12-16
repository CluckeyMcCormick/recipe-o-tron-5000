json.array!(@item_class_inclusions) do |item_class_inclusion|
  json.extract! item_class_inclusion, :id, :item_id, :item_class_id
  json.url item_class_inclusion_url(item_class_inclusion, format: :json)
end
