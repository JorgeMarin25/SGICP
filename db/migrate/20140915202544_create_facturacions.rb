class CreateFacturacions < ActiveRecord::Migration
  def change
    create_table :facturacions do |t|
      t.date :fecha_facturacion
      t.date :fecha_vencimiento
      t.references :cliente, index: true
      t.references :cotizacion, index: true
      t.boolean :estado
      t.integer :iva
      t.integer :total

      t.timestamps
    end
  end
end
