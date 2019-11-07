class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name

      t.timestamps
      t.timestamp :deleted_at
    end
    add_index :organizations, :deleted_at

    Organization.create(name: :aim)
    Organization.create(name: :asgard)
    Organization.create(name: :avenger)
    Organization.create(name: :brotherhood)
    Organization.create(name: :defender)
    Organization.create(name: :eternal)
    Organization.create(name: :fantastic_four)
    Organization.create(name: :guardian)
    Organization.create(name: :hand)
    Organization.create(name: :hydra)
    Organization.create(name: :inhuman)
    Organization.create(name: :kree)
    Organization.create(name: :marauders)
    Organization.create(name: :martial_artist)
    Organization.create(name: :mercenary)
    Organization.create(name: :military)
    Organization.create(name: :minion)
    Organization.create(name: :power_armor)
    Organization.create(name: :ravager)
    Organization.create(name: :shield)
    Organization.create(name: :sinister_six)
    Organization.create(name: :spiderverse)
    Organization.create(name: :supernatural)
    Organization.create(name: :trick_or_treat)
    Organization.create(name: :wakandan)
    Organization.create(name: :wave1_avenger)
    Organization.create(name: :xforce)
    Organization.create(name: :xmen)
  end
end
