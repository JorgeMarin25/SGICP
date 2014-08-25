class CreateSalarios < ActiveRecord::Migration
  def change
    create_table :salarios do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
