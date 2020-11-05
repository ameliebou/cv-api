json.extract! @resume, :title, :description
json.user @resume.user, :first_name, :last_name
json.portfolios @resume.portfolios do |portfolio|
  json.extract! portfolio, :title, :url, :description
end
json.working_experiences @resume.working_experiences do |working_experience|
  json.extract! working_experience, :start_date, :end_date, :title, :company, :description
end
