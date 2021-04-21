class Empresa < ApplicationRecord
	has_many :responsables, dependent: :delete_all
	has_many :centros, dependent: :delete_all
	has_many :trabajadors, through: :centros
	has_one :politica_preventiva, dependent: :delete
end
