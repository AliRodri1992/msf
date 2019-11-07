class Account < ApplicationRecord
  belongs_to :user

  has_many :collections
  has_many :characters, through: :collections
end
