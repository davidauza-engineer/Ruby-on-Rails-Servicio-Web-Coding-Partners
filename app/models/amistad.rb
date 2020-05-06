class Amistad < ApplicationRecord
  belongs_to :usuario
  belongs_to :amigo, class_name: 'Usuario'
end
