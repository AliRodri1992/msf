class Organization < ApplicationRecord
  has_many :character_organizations
  has_many :characters, through: :character_organizations
end
