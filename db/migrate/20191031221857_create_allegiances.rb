class CreateAllegiances < ActiveRecord::Migration[5.2]
  def change
    create_table :allegiances do |t|
      t.string :name

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :allegiances, :deleted_at

    Allegiance.create(name: :hero)
    Allegiance.create(name: :villain)
  end
end
