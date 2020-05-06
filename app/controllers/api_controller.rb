class ApiController < ActionController::Base
  # Permitir HTTP requests sin token de autenticidad
  protect_from_forgery with: :null_session
end
