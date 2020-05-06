json.extract! usuario, :id, :nombre, :correo_electronico, :contrasena, :telefono, :github, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
