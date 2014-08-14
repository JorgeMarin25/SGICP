class CreateEstudios < ActiveRecord::Migration
  def change
    create_table :estudios do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fecha
      t.string :lugar
      t.references :empleado, index: true

      t.timestamps
    end
  end
end
