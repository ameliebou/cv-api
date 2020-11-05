json.array! @skills do |skill|
  json.extract! skill, :name, :level
end
