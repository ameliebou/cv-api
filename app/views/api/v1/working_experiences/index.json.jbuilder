json.array! @working_experiences do |working_experience|
  json.extract! working_experience, :start_date, :end_date, :title, :company, :description
end
