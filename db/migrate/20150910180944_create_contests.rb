class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.string :nombre
      t.string :url
      t.datetime :fechainicio
      t.datetime :fechafin
      t.string :premio

      t.timestamps
    end
  end
end
