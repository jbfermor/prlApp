json.extract! empresa, :id, :razon_social, :cif, :direccion, :poblacion, :provincia, :cp, :telefono, :email, :t_fuera, :created_at, :updated_at
json.url empresa_url(empresa, format: :json)
