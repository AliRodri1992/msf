class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :nickname
      t.integer :level
      t.integer :pid
      t.integer :total_collection_power, default: 0
      t.integer :strongest_team_power, default: 0
      t.integer :war_mvp, default: 0
      t.integer :total_characters_collected, default: 0
      t.integer :all_time_arena_rank
      t.integer :latest_arena_rank
      t.integer :all_time_blitz_rank
      t.integer :latest_blitz_rank
      t.integer :blitz_win
      t.integer :characters_at_max_star_rank

      t.references :user, foreign_key: true

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :accounts, :deleted_at
  end
end
