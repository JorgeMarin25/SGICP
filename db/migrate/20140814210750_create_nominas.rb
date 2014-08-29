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
      t.boolean :estado

      t.timestamps
    end
    add_attachment :nominas, :image
  end
end
