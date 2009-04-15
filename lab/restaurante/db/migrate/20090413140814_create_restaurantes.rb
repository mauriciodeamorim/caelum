class CreateRestaurantes < ActiveRecord::Migration
  def self.up
    create_table :restaurantes do |t|
	t.string :nome, :limit => 80
	t.string :endereco
      t.timestamps
    end
  end

  def self.down
    drop_table :restaurantes
  end
end
