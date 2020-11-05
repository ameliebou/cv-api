json.array! @contacts do |contact|
  json.extract! contact, :email, :address, :phone_number, :github, :linkedin
  json.websites contact.websites do |website|
    json.extract! website, :title, :url
  end
end
