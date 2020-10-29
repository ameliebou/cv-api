json.array! @resumes do |resume|
  json.extract! resume, :title, :description
  json.user resume.user, :email
end
