class AddColumnEspecialidade < ActiveRecord::Migration
  def self.up
  	add_column :padarias, :especialidade, :string, :limit => 40
  end

  def self.down
  	remove_column :padarias, :especialidade
  end
end
