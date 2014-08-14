class CreateExperiencia < ActiveRecord::Migration
  def change
    create_table :experiencia do |t|
      t.string :lugar
      t.string :cargo
      t.string :jefe
      t.string :tel
      t.date :fchini
      t.date :fchfin
      t.string :motivo
      t.references :empleado, index: true

      t.timestamps
    end
  end
end
