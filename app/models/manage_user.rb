class ManageUser < ApplicationRecord
    self.table_name = "users"

    validates :name, presence: true, length: { maximum: 30 }
    validates :role, presence: true
    validates :password_confirmation, presence: true

    enum role: { 'cook': false, 'administrator': true }

    devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
end
