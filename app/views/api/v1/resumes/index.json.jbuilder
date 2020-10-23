json.array! @resumes do |resume|
  json.extract! resume, :title, :description
end
