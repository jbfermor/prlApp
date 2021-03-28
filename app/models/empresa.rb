class Empresa < ApplicationRecord
	has_many :responsables
	has_many :centros
end
