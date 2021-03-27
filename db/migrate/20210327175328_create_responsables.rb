class CreateResponsables < ActiveRecord::Migration[6.1]
  def change
    create_table :responsables do |t|
      t.string :nombre
      t.string :apellidos
      t.string :nif
      t.string :cargo

      t.timestamps
    end
  end
end
