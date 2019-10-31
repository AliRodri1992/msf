class Character < ApplicationRecord
  acts_as_paranoid

  has_one :base_stat, dependent: :destroy
end
