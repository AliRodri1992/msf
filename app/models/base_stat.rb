class BaseStat < ApplicationRecord
  acts_as_paranoid

  belongs_to :character
end
