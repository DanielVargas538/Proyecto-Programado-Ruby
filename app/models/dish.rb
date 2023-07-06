class Dish < ApplicationRecord
    self.table_name = "dishes"
    has_many :orders
    has_many :clients, through: :orders
    
    has_one_attached :photo

    validates :name, presence: true 
    validates :description, presence: true
    validates :price, presence: true
    validates :photo, presence: true
    validates :available, presence: true

    enum available: { 'unavailable': false, 'available': true }

    def photo_url
        Rails.application.routes.url_helpers.url_for(photo) if photo.attached?
    end

    def self.ransackable_attributes(auth_object = nil)
        %w[available created_at description id name photo price updated_at]
    end

end
