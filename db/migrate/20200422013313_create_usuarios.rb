class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :correo_electronico
      t.string :contrasena
      t.string :telefono
      t.string :github

      t.timestamps
    end
  end
end
