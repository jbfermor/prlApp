class CreateInformes < ActiveRecord::Migration[6.1]
  def change
    create_table :informes do |t|
      t.string :tipo
      t.string :ciudadFirma
      t.integer :fechaFirma
      t.references :empresa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
