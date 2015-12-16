json.array!(@process_type_inclusions) do |process_type_inclusion|
  json.extract! process_type_inclusion, :id, :process_type_id, :item_class_id
  json.url process_type_inclusion_url(process_type_inclusion, format: :json)
end
