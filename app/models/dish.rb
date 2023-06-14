class Dish < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :photo, presence: true
    validates :available, presence: true
  
    # Opcional: Agrega la asociación si corresponde
    # has_many :orders
  end
  