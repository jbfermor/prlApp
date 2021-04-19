class CreatePoliticaPreventivas < ActiveRecord::Migration[6.1]
  def change
    create_table :politica_preventivas do |t|
      t.integer :pp1
      t.integer :pp2
      t.integer :pp3
      t.integer :pp4
      t.integer :pp5
      t.integer :pp6
      t.integer :pp7
      t.integer :pp8
      t.integer :pp9
      t.integer :pp10
      t.integer :pp11
      t.string :pp12

      t.timestamps
    end
  end
end
