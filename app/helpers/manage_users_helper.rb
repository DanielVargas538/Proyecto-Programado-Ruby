module ManageUsersHelper

    def roles
        ManageUser.roles.keys.map do |rol|
            [t("activerecord.attributes.user.roles.#{rol}"), rol]
        end
    end
end
