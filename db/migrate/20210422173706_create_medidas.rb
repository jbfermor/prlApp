class CreateMedidas < ActiveRecord::Migration[6.1]
  def change
    create_table :medidas do |t|
      t.integer :m1
      t.integer :m2
      t.string :m3
      t.integer :m4
      t.integer :m5
      t.integer :m6
      t.integer :m7
      t.integer :m8
      t.integer :m9
      t.integer :m10
      t.integer :m11
      t.integer :m12
      t.string :m13
      t.integer :m14
      t.integer :m15
      t.integer :m16
      t.integer :m17
      t.integer :m18
      t.integer :m19
      t.integer :m20
      t.string :m21
      t.string :m22
      t.string :m23
      t.string :m24
      t.integer :m25
      t.integer :m26
      t.integer :m27
      t.integer :m28
      t.integer :m29
      t.integer :m30
      t.integer :m31
      t.integer :m32
      t.integer :m33
      t.integer :m34
      t.integer :m35
      t.integer :m36
      t.integer :m37
      t.integer :m38
      t.integer :m39
      t.integer :m40
      t.integer :m41
      t.integer :m42
      t.integer :m43
      t.integer :m44
      t.integer :m45
      t.integer :m46
      t.references :centro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
