class Informe < ApplicationRecord
  belongs_to :empresa
	has_many :trabajadors, through: :empresa
end
