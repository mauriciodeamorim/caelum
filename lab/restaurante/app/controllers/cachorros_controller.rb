class CachorrosController < ApplicationController
def late
	puts "latindo"
	render :text => "<html><h1>Auuuuauauau :#{params[:qtde]} </h1></html>"
end
#se não fornecer a action (parametro na url) cai direto na index onde pode ser feitos outtras coisas

def download
	send_data(bytes) #envia bytes de um arquivos
	#send_data(bytes, :content_tyoe =. 'application/mp3')
	#send_file 'c:/arquivos/blablabla.mp3'
end
def index
	redirect_to "http://google.com"
	#ou cachorros/late
	#/cachorros/late
end	

end

#recupera-se o que vem da url com o metodo params[] que retorna um hash (somente string)
#para sessões usa-se session[:user] = 1 que podem armazenar todo objeto

#importante
#técnica chamada redirect after post
#todo lugar onde precisa passar url pode-se passar um hash no método redirect_to :controller => 'cahorros', :action => 'late', qtde => 4
#Qualquer outro parametro que não for action ou controller são parâmetros

#para enviar bytes
















