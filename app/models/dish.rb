class Dish < ApplicationRecord
    self.table_name = "dishes"
    has_one_attached :photo

    validates :name, presence: true 
    validates :description, presence: true
    validates :price, presence: true
    validates :photo, presence: true
    validates :available, presence: true
  
end
