json.array! @contacts do |contact|
  json.extract! contact, :email, :address, :phone_number, :github, :linkedin
end
