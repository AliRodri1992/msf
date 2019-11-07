class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.references :account, foreign_key: true
      t.references :character, foreign_key: true
      t.timestamp :deleted_at

      t.timestamps
    end
    add_index :collections, :deleted_at
  end
end
