class Rol < ApplicationRecord
  acts_as_paranoid

  has_one :user
end
