class Type < ApplicationRecord
  acts_as_paranoid

  has_many :characters
end
