json.extract! user, :id, :nombre, :apellidos, :telefono, :created_at, :updated_at
json.url user_url(user, format: :json)
