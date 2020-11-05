json.array! @educations do |education|
  json.extract! education, :graduation_date, :degree, :institute, :description
end
