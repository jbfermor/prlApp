class Empresa < ApplicationRecord
	has_many :responsables, dependent: :delete_all
	has_many :centros, dependent: :delete_all
	has_many :trabajadors, through: :centros
	has_many :informes, dependent: :delete_all
	has_one :politica_preventiva, dependent: :delete
	has_one :organizacion_empresarial, dependent: :delete
	has_one :practica, dependent: :delete
	has_one :presupuesto, dependent: :delete
end
