class Qualificacao < ActiveRecord::Base
	belongs_to :restaurante
	belongs_to :cliente
end


=begin
q1 = Qualificacao.new :nota => 7.0, :valor_gasto => 120
q1.restaurante = Restaurante.find(1)
ou
q1.restaurante_id = 1
q1.save

========
relacionando uma qualificacao com restaurante
r = Restaurante.find_by_nome('Fasano')
r.qualificacoes
q1 = Qualificacao.create :nota => 8.0, :valor_gasto => 200
r.qualificacoes << q1

=======
relacionamento ternário
Para pegar todos os clientes de um restaurante
r = Restaurante.first
clientes = r.qualificacoes.map{|q| q.cliente}
ou 
pode-se especificar na classe do restaurante um relacionamento do tipo
has_many :clientes, :through => :qualificacoes
"eu tenho muitos clientes através de qualificacoes"
relacionamento da página 53 figura "a"

=end
