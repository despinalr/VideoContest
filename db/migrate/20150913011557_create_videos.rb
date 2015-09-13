class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :contest_id
      t.string :email
      t.string :nombre
      t.string :apellido
      t.integer :estado

      t.timestamps
    end
  end
end
