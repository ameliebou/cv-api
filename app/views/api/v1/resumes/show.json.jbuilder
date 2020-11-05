json.extract! @resume, :title, :description
json.user @resume.user, :first_name, :last_name
json.portfolios @resume.portfolios do |portfolio|
  json.extract! portfolio, :title, :url, :description
end
