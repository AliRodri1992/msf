class CreateCharactersOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :characters_organizations do |t|
      t.references :character, foreign_key: true
      t.references :organization, foreign_key: true

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :characters_organizations, :deleted_at
  end
end
