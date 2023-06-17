module OrdersHelper

    def status
        Order.status.keys.map do |state|
            [t("activerecord.attributes.order.status.#{state}"), state]
        end
    end
end
