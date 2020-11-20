json.extract! @resume, :title, :description
json.user @resume.user, :first_name, :last_name

if @resume.contact
  json.contact @resume.contact, :email, :address, :phone_number, :github, :linkedin
  json.websites @resume.contact.websites do |website|
    json.extract! website, :title, :url
  end
end

if @resume.portfolios
  json.portfolios @resume.portfolios do |portfolio|
    json.extract! portfolio, :title, :url, :description
    json.stacks portfolio.stacks do |stack|
      json.extract! stack, :name
    end
  end
end

if @resume.working_experiences
  json.working_experiences @resume.working_experiences do |working_experience|
    json.extract! working_experience, :start_date, :end_date, :title, :company, :description
  end
end

if @resume.educations
  json.educations @resume.educations do |education|
    json.extract! education, :graduation_date, :degree, :institute, :description
  end
end

if @resume.languages
  json.languages @resume.languages do |language|
    json.extract! language, :name, :level
  end
end

if @resume.skills
  json.skills @resume.skills do |skill|
    json.extract! skill, :name, :level
  end
end
