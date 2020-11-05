json.extract! @resume, :title, :description
json.user @resume.user, :first_name, :last_name
json.contact @resume.contact, :email, :address, :phone_number, :github, :linkedin
json.portfolios @resume.portfolios do |portfolio|
  json.extract! portfolio, :title, :url, :description
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
