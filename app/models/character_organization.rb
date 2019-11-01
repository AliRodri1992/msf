class CharacterOrganization < ApplicationRecord
  belongs_to :character
  belongs_to :organization
end
