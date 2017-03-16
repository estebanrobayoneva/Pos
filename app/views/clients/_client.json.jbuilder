json.extract! client, :id, :documento, :tipo_documento, :nombre, :apellido, :telefono, :direccion, :pais, :ciudad, :email, :created_at, :updated_at
json.url client_url(client, format: :json)
