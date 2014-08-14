class CreateFacturacions < ActiveRecord::Migration
  def change
    create_table :facturacions do |t|
      t.date :fecha
      t.date :fchven
      t.string :cotizacion
      t.string :cliente
      t.string :telefono
      t.string :empresa
      t.string :nit
      t.string :producto
      t.text :descripcion
      t.string :cantidad
      t.integer :precio
      t.integer :iva
      t.integer :subtotal

      t.timestamps
    end
  end
end
