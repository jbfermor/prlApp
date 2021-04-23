class CreatePresupuestos < ActiveRecord::Migration[6.1]
  def change
    create_table :presupuestos do |t|
      t.integer :pr1
      t.integer :pr2
      t.integer :pr
      t.integer :pr4
      t.integer :pr5
      t.integer :pr6
      t.integer :pr7
      t.integer :pr8
      t.integer :pr9
      t.integer :pr10
      t.integer :pr11
      t.integer :pr12
      t.integer :pr13
      t.integer :pr14
      t.integer :pr15
      t.integer :pr16
      t.integer :pr17
      t.references :empresa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
