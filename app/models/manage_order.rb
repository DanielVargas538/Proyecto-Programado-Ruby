class ManageOrder < ApplicationRecord
    self.table_name = "orders"
    belongs_to :client
    enum state: { 'on_time': 0, 'late': 1, 'delayed': 2, 'cancelled': 3, 'delivered': 4 }

    def self.ransackable_attributes(auth_object = nil)
        ["client_id", "created_at", "date", "id", "state", "updated_at"]
      end
end
