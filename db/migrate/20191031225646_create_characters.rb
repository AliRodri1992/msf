class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :description
      t.integer :min_level
      t.integer :max_level

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :characters, :deleted_at
  end
end
