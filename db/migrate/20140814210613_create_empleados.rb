class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :doc
      t.references :estado, index: true
      t.string :direccion
      t.string :barrio
      t.string :ciudad
      t.string :telefono
      t.string :celular
      t.string :correo
      t.boolean :genero
      t.date :fchinicio
      t.date :fchfinal
      t.references :cargo
      t.string :ref
      t.string :telref

      t.timestamps
    end
  end
end
