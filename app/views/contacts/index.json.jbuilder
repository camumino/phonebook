json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :surname, :email, :contact_type, :user_id
  json.url contact_url(contact, format: :json)
end
