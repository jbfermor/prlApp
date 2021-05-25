class AddResponsabilitiesToTrabajador < ActiveRecord::Migration[6.1]
  def change
    add_column :trabajadors, :rincendio, :integer
    add_column :trabajadors, :revacuacion, :integer
    add_column :trabajadors, :rauxilio, :integer
  end
end
