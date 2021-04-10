class AddActivoToTrabajador < ActiveRecord::Migration[6.1]
  def change
    add_column :trabajadors, :activo, :integer
  end
end
