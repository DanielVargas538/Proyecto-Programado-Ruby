class Order < ApplicationRecord
    validates :date, presence: true
    validates :status, presence: true
  
    # Opcional: Agrega las asociaciones si corresponde
    # belongs_to :user
    # has_many :dishes
  end
  