json.array! @languages do |language|
  json.extract! language, :name, :level
end
