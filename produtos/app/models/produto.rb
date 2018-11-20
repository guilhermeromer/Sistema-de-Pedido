class Produto < ApplicationRecord
	validates :data, :descricao, :valor, presence:  { message: ' Campo obrigatorio' }
    validates :valor, numericality: { greater_than_or_equal_to: 1, message: ' Valor tem de ser maior que 0' }
end
