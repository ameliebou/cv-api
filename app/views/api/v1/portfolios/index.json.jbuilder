json.array! @portfolios do |portfolio|
  json.extract! portfolio, :title, :url, :description
end
