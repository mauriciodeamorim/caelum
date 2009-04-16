class AlteraTipoCampoComentarioType < ActiveRecord::Migration
  def self.up
  	#remove_column :comentarios, :comentario_type
  	#add_column :comentarios, :comentario_type, :string
 	#alter_column :comentarios, :comentario_type, :string 
 	drop_table :comentarios
  end

  def self.down
  end
end
