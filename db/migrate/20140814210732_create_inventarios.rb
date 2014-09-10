class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.string :productos
      t.integer :cantidad
      t.integer :valor
      
      t.timestamps
    end
  end
end
