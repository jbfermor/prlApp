class CreateOrganizacionEmpresarials < ActiveRecord::Migration[6.1]
  def change
    create_table :organizacion_empresarials do |t|
      t.integer :d
      t.integer :mi
      t.integer :t
      t.integer :dp
      t.references :empresa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
