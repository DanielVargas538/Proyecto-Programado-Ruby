class ManageDish < ApplicationRecord
    self.table_name = "dishes"
    has_many :order
    has_many :clients, through: :orders
    
    has_one_attached :photo

    validates :name, presence: true 
    validates :description, presence: true
    validates :price, presence: true
    validates :photo, presence: true
    validates :available, presence: true

    enum available: { 'unavailable': false, 'available': true }

end
