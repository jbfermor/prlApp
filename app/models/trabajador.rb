class Trabajador < ApplicationRecord
	belongs_to :centro
	has_one :empresa, through: :centros
end
