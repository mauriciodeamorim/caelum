class RestaurantesController < ApplicationController
	def index #Action
		@restaurantes = Restaurante.all
	end
	def destroy
		@resturante = Restaurante.find( params [:id])
		@restaurante.destroy
		#isto não funciona
		#@mensagem = "Removido com sucesso"
		#e pode ser resolvido com uma variável "flash"
		flash[:notice] = "Removido com sucesso"
		redirect_to :action => 'index'
	end
end
