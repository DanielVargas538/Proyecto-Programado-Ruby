class ManageOrder < ApplicationRecord
    self.table_name = "orders"
    belongs_to :client
    belongs_to :dish
    
    def self.ransackable_attributes(auth_object = nil)
      %w[date state client_id dish_id]
    end

    def self.ransackable_associations(auth_object = nil)
      ["client", "dish"]
    end
    
    enum state: { 'on_time': 0, 'late': 1, 'delayed': 2, 'cancelled': 3, 'delivered': 4 }

end
