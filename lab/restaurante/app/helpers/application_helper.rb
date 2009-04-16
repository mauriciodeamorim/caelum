# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def comentarios(comentavel)
		html = "<div id='comentarios'>"
		html << "<h3>Comentarios</h3>"
		html << render(:partial => 'comentarios/comentario', :collection => comentavel.comentarios)
		html << "</div>"
		html
	end
end
