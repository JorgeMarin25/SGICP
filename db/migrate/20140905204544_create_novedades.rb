class CreateNovedades < ActiveRecord::Migration
  def change
    create_table :novedades do |t|
      t.date :iniciovacaciones
      t.date :finvacaciones
      t.integer :prendasrealizadas
      t.integer :valorprenda
      t.integer :sueldobasico
      t.integer :primalegal
      t.integer :festivostrabajados
      t.integer :diasnotrabajados
      t.integer :horasnotrabajadas

      t.timestamps
    end
  end
end
