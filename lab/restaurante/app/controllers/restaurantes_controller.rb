class RestaurantesController < ApplicationController
	def index #Action
		@restaurantes = Restaurante.all
	end
end
