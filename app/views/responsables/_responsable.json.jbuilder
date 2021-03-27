json.extract! responsable, :id, :nombre, :apellidos, :nif, :cargo, :belongs_to, :created_at, :updated_at
json.url responsable_url(responsable, format: :json)
