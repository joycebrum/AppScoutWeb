json.extract! user, :id, :first_name, :email, :password, :registration_number, :created_at, :updated_at
json.url user_url(user, format: :json)
