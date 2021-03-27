class AddEmpresaRefToResponsable < ActiveRecord::Migration[6.1]
  def change
    add_reference :responsables, :empresa, null: false, foreign_key: true
  end
end
