class CreateTecnologias < ActiveRecord::Migration[6.0]
  def change
    create_table :tecnologias do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
