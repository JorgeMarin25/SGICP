class CreateCotizacions < ActiveRecord::Migration
  def change
    create_table :cotizacions do |t|
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
      t.integer :total
      t.boolean :estado

      t.timestamps
    end
  end
end
