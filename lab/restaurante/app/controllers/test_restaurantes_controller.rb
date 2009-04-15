class RestaurantesController < ApplicationController
	def index #Action
		restaurantes = Restaurante.all
	end

end

#ActionPack tem ActionController e ActionView
#Pasta View, padrao dos arquivos na pasta
#<action>.<mime>.<handler>
#<action> ação = metodo do controller
#<mime> html, xml, json, rss, etc
#<handler> erb, builder, rjs, Markaby, HAML
#=begin
<html>
	<h1>Listagem</h1>
	<ul>
		<%@restaurante.each do |restaurante| %>
			<li> <%= restaurante.nome %> </li>
		<%end%>
	</ul>
</html>			 
		<%	%>
		<%	-%>	#com menos não coloca espaço no final
		<%#	%> #comentário não executa e não aparece no browser					
		<%!	%> #comentário não executa, mas aparece no browser							
		<%@variavel%> #é declarado como atributo no controller e pode ser chamado
					  #em qualquer da view	
		<%= %> #sempre imprimi algo na tela
		
		
		html = "<html>"
		restaurantes.each do |r|
			html << "<li> #{r.nome} </li>"
		end
=end		
