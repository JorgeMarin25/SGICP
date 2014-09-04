class CreateNovedades < ActiveRecord::Migration
  def change
    create_table :novedades do |t|
      t.date :fechavacaciones
      t.date :finvacaciones
      t.integer :cesantias
      t.integer :primalegal
      t.integer :primavacaciones
      t.integer :sueldobasico
      t.integer :horasextras
      t.integer :recargosdiurnos
      t.integer :dominicales
      t.integer :festivos
      t.integer :comiciones
      t.integer :diasnotrabajados
      t.integer :horasnotrabajadas

      t.timestamps
    end
  end
end
