class AddEmpresaRefToPoliticaPreventiva < ActiveRecord::Migration[6.1]
  def change
    add_reference :politica_preventivas, :empresa, null: false, foreign_key: true
  end
end
