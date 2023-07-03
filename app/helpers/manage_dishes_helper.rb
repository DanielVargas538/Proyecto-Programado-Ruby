module ManageDishesHelper

    def availables
        Dish.availables.keys.map do |available|
            [t("activerecord.attributes.dish.availables.#{available}"), available]
        end
    end
end
