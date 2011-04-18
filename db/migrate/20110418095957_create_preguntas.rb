class CreatePreguntas < ActiveRecord::Migration
  def self.up
    create_table :preguntas do |t|
      t.integer :encuesta_id
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :preguntas
  end
end
