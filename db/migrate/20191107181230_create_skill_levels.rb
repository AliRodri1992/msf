class CreateSkillLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :skill_levels do |t|
      t.references :skill, foreign_key: true
      t.string :description
      t.integer :level

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :skill_levels, :deleted_at
  end
end
