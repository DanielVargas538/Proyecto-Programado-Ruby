class User < ApplicationRecord
  self.table_name = "users"
  validates :name, presence: true, length: { maximum: 30 }
  validates :role, presence: true
  validates :password_confirmation, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
