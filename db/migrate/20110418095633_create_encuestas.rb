class CreateEncuestas < ActiveRecord::Migration
  def self.up
    create_table :encuestas do |t|
      t.string :nombre
      t.timestamps
    end
  end

  def self.down
    drop_table :encuestas
  end
end
