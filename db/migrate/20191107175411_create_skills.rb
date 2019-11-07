class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.references :character, foreign_key: true

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :skills, :deleted_at
  end
end
