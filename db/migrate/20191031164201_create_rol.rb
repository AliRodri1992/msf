class CreateRol < ActiveRecord::Migration[5.2]
  def change
    create_table :rol do |t|
      t.string :name
      t.datetime :deleted_at

      t.timestamps
    end
    add_index :rol, :deleted_at

    Rol.create(name: :administrador)
    Rol.create(name: :usuario)
  end
end
