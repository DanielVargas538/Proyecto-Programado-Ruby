class Client < ApplicationRecord
  self.table_name = "clients"
  has_many :orders
  has_many :dishes, through: :orders

  validates :first_name,presence: true
  validates :last_name,presence: true
  validates :phone,presence: true
  validates :address, presence: true
  validates :locked, inclusion: [true, false]

  validates :password_confirmation, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
