class Restaurante < ActiveRecord::Base
	has_many :qualificacoes
	has_many :comentarios, :as => comentavel
	#validate_presence_of :nome, :message => "Campo obrigatório"
end
