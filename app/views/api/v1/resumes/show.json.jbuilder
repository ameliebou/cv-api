json.extract! @resume, :title, :description
json.user @resume.user, :first_name, :last_name
json.contact @resume.contact, :email, :address, :phone_number, :github, :linkedin
json.portfolios @resume.portfolios do |portfolio|
  json.extract! portfolio, :title, :url, :description
  json.stacks portfolio.stacks do |stack|
    json.extract! stack, :name
  end
end
json.working_experiences @resume.working_experiences do |working_experience|
  json.extract! working_experience, :start_date, :end_date, :title, :company, :description
end
json.educations @resume.educations do |education|
  json.extract! education, :graduation_date, :degree, :institute, :description
end
json.languages @resume.languages do |language|
  json.extract! language, :name, :level
end
json.skills @resume.skills do |skill|
  json.extract! skill, :name, :level
end
