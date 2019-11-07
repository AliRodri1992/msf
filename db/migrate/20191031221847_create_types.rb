class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.string :name

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :types, :deleted_at

    Type.create(name: :blaster)
    Type.create(name: :brawler)
    Type.create(name: :controller)
    Type.create(name: :protector)
    Type.create(name: :support)
  end
end
