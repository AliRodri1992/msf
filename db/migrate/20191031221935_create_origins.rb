class CreateOrigins < ActiveRecord::Migration[5.2]
  def change
    create_table :origins do |t|
      t.string :name

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :origins, :deleted_at
    Origin.create(name: :bio)
    Origin.create(name: :mutant)
    Origin.create(name: :mystic)
    Origin.create(name: :skill)
    Origin.create(name: :tech)
  end
end
