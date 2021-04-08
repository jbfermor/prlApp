class Empresa < ApplicationRecord
	has_many :responsables
	has_many :centros
	has_many :trabajadors, through: :centros
end
