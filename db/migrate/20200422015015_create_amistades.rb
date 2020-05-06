class CreateAmistades < ActiveRecord::Migration[6.0]
  def change
    create_table :amistades do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :amigo, null: false
      t.boolean :confirmada

      t.timestamps
    end
    add_foreign_key :amistades, :usuarios, column: :amigo_id, primary_key: 'id'
  end
end
