class RestaurantesController < ApplicationController
	def index #Action
		@restaurantes = Restaurante.all :order => 'nome'
		#Isto faz com que suporte vários formatos através do Accept : 'text/xml'
		# /restaurantes?format=xml (chama diretor pela url um formato
		# /restaurantes/show/1.xml
		respond_to do |format|
			format.html
			format.xml {render :text => @restarantes.to_xml, content_type => 'text/xml'}
			#ou direto resumido
			#format.xml {render :xml => @restarantes}
			#bloco com uma linha usa chaves, mas de um linha usa (do end)
			format.json {render :text => @restarantes.to_json}
		end
	end
	def destroy
		@restaurante = Restaurante.find(params[:id])
		@restaurante.destroy
		#isto não funciona
		#@mensagem = "Removido com sucesso"
		#e pode ser resolvido com uma variável "flash"
		flash[:notice] = "Removido com sucesso"
		redirect_to :action => 'index'
	end
	def new
		@restaurante = Restaurante.new
	end
	def create
=begin
#	@restaurante = Restaurante.new
#	@restaurante.nome = params['nome']
=end
	#poderia ser como um hash
	#params['restaurante'] #que um hash
	#entao passa direto na instancia da classe
	@restaurante = Restaurante.new params[:restaurante]
#	@restaurante.save # retorna true ou false se der problema de validação/gravação	
	#o save fica melhor fazendo o tratamento
		if @restaurante.save
			flash[:notice]= "Salvo com sucesso"
			redirect_to :action => 'index'
		else
			#renderize a view da action new
			#se der problema de validação o formulario é mostrado com o último preenchimento
			render :action => 'new'
		end
	end
end
