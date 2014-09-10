class AddUnionNitNombreToClientes < ActiveRecord::Migration
  def change
    add_column :clientes, :nitnombre, :string
  end
end
