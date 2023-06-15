module OrdersHelper

    def status
        Order.status.keys.map do |status|
            [t("activerecord.attributes.order.status.#{status}"), status]
        end
    end
end
