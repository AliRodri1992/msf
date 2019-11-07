class CreateJurisdictions < ActiveRecord::Migration[5.2]
  def change
    create_table :jurisdictions do |t|
      t.string :name

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :jurisdictions, :deleted_at

    Jurisdiction.create(name: :city)
    Jurisdiction.create(name: :cosmic)
    Jurisdiction.create(name: :global)
  end
end
