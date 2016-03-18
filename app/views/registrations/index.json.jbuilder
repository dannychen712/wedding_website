json.array!(@registrations) do |registration|
  json.extract! registration, :id, :first_name, :last_name, :address1, :address2, :city, :state, :email, :phone_number, :plus_one_number
  json.url registration_url(registration, format: :json)
end
