class CreatePracticas < ActiveRecord::Migration[6.1]
  def change
    create_table :practicas do |t|
      t.integer :p1
      t.integer :p2
      t.integer :p3
      t.integer :p4
      t.integer :p5
      t.integer :p6
      t.integer :p7
      t.integer :p8
      t.integer :p9
      t.integer :p10
      t.integer :p11
      t.integer :p12
      t.integer :p13
      t.integer :p14
      t.integer :p15
      t.integer :p16
      t.integer :p17
      t.integer :p18
      t.integer :p19
      t.integer :p20
      t.string :p21
      t.integer :p22
      t.integer :p23
      t.integer :p24
      t.integer :p25
      t.integer :p26
      t.integer :p27
      t.integer :p28
      t.integer :p29
      t.integer :p30
      t.integer :p31
      t.integer :p32
      t.integer :p33
      t.integer :p34
      t.integer :p35
      t.integer :p36
      t.integer :p37
      t.integer :p38
      t.integer :p39
      t.integer :p40
      t.integer :p41
      t.string :p42
			t.integer :p43
			t.integer :p44
      t.references :empresa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
