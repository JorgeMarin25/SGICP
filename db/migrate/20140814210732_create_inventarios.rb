class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.string :productos
      t.string :cantidad

      t.timestamps
    end
  end
end
