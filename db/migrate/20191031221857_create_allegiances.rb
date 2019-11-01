class CreateAllegiances < ActiveRecord::Migration[5.2]
  def change
    create_table :allegiances do |t|
      t.string :name
      t.timestamp :deleted_at

      t.timestamps
    end
    add_index :allegiances, :deleted_at

    Allegiance.create(name: :hero)
    Allegiance.create(name: :villain)
  end
end
