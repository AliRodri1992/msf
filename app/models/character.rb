class Character < ApplicationRecord
  acts_as_paranoid

  belongs_to :allegiance
  belongs_to :jurisdiction
  belongs_to :origin
  belongs_to :type

  has_one :base_stat, dependent: :destroy

  has_many :character_organizations
  has_many :organizations, through: :character_organizations
end
