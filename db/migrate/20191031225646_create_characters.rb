class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :description
      t.integer :min_level
      t.integer :max_level
      t.references :allegiance, foreign_key: true
      t.references :jurisdiction, foreign_key: true
      t.references :origin, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :characters, :deleted_at
  end
end
