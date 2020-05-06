class CreateUsuariosTecnologias < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios_tecnologias do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :tecnologia, null: false, foreign_key: true

      t.timestamps
    end
  end
end
