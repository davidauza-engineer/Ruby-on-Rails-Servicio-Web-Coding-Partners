class UsuarioTecnologia < ApplicationRecord
  belongs_to :usuario
  belongs_to :tecnologia
end
