class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombre, null: false
      t.string :apellido, null: false
      t.string :email, null: false
      t.string :password, null: false

      t.timestamps
    end
  end
end
