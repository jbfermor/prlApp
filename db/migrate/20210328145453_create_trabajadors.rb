class CreateTrabajadors < ActiveRecord::Migration[6.1]
  def change
    create_table :trabajadors do |t|
      t.string :nombre
      t.string :apellidos
      t.string :puesto
      t.integer :embarazo
      t.integer :lactante
      t.integer :sensible
      t.integer :discapacidad
      t.integer :menor
      t.integer :fecha_alta
      t.integer :fecha_baja

      t.timestamps
    end
  end
end
