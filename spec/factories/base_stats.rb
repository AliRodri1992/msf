FactoryBot.define do
  factory :base_stat do
    character { nil }
    health { 1 }
    damage { 1 }
    armor { 1 }
    focus { 1 }
    resistance { 1 }
    critical_damage { 1 }
    critical_chance { 1 }
    speed { 1 }
    dodge_chance { 1 }
    block_chance { 1 }
    block_amount { 1 }
    accuracy { 1 }
    deleted_at { "2019-10-31 17:19:02" }
  end
end
