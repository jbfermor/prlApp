class AddCentroRefToTrabajador < ActiveRecord::Migration[6.1]
  def change
    add_reference :trabajadors, :centro, null: false, foreign_key: true
  end
end
