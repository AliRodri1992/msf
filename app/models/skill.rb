class Skill < ApplicationRecord
  belongs_to :character

  has_many :skill_levels
end
