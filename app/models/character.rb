class Character < ApplicationRecord
  acts_as_paranoid

  belongs_to :allegiance
  belongs_to :type
  has_one :base_stat, dependent: :destroy
end
