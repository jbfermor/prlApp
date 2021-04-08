json.extract! trabajador, :id, :nombre, :apellidos, :puesto, :embarazo, :lactante, :sensible, :discapacidad, :menor, :fecha_alta, :fecha_baja, :created_at, :updated_at
json.url trabajador_url(trabajador, format: :json)
