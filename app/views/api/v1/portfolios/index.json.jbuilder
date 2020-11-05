json.array! @portfolios do |portfolio|
  json.extract! portfolio, :title, :url, :description
  json.stacks portfolio.stacks do |stack|
    json.extract! stack, :name
  end
end
