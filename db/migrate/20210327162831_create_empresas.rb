class CreateEmpresas < ActiveRecord::Migration[6.1]
  def change
    create_table :empresas do |t|
      t.string :razon_social
      t.string :cif
      t.string :direccion
      t.string :poblacion
      t.string :provincia
      t.integer :cp
      t.integer :telefono
      t.string :email
      t.integer :t_fuera

      t.timestamps
    end
  end
end
