class CreateNominas < ActiveRecord::Migration
  def change
    create_table :nominas do |t|
      t.integer :salariobasico
      t.integer :horasextras
      t.integer :recargosdiurnos
      t.integer :recargosnocturnos
      t.integer :dominicales
      t.integer :festivos
      t.integer :comisiones
      t.integer :diasnotrabajados
      t.integer :horasnotrabajadas
      t.references :empleado, index: true

      t.timestamps
    end
  end
end
