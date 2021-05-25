class AddResponsableToTrabajador < ActiveRecord::Migration[6.1]
  def change
    add_column :trabajadors, :es_responsable, :integer
  end
end
