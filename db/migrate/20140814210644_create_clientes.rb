class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :empresa
      t.string :nit
      t.string :direccion
      t.string :ciudad
      t.string :telefono
      t.string :correo

      t.timestamps
    end
  end
end
