json.array! @resumes do |resume|
  json.extract! resume, :title, :description
  json.user resume.user, :first_name, :last_name
end
