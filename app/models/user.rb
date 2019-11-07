class User < ApplicationRecord
  acts_as_paranoid

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :authentication_keys => [:username]

  validates :username, presence: true

  belongs_to :rol
  has_many :accounts

  def admin?
    self.rol.name == "administrador"
  end
end
