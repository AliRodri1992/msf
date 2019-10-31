class CreateBaseStats < ActiveRecord::Migration[5.2]
  def change
    create_table :base_stats do |t|
      t.references :character, foreign_key: true
      t.integer :health
      t.integer :damage
      t.integer :armor
      t.integer :focus
      t.integer :resistance
      t.integer :critical_damage
      t.integer :critical_chance
      t.integer :speed
      t.integer :dodge_chance
      t.integer :block_chance
      t.integer :block_amount
      t.integer :accuracy
      t.timestamp :deleted_at

      t.timestamps
    end
    add_index :base_stats, :deleted_at
  end
end
