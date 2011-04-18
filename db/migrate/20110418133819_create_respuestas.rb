class CreateRespuestas < ActiveRecord::Migration
  def self.up
    create_table :respuestas do |t|
      t.integer :pregunta_id
      t.string :contenido

      t.timestamps
    end
  end

  def self.down
    drop_table :respuestas
  end
end
