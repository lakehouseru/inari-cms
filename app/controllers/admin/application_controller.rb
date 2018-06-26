# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    include Pundit
    before_action :authenticate_user!
    before_action :authenticate_admin

    before_action :set_locale
 
    def set_locale
      # Administrate sets own default locale, so we need thhis hack
      I18n.locale = params[:locale] || :ru 
    end

    def authenticate_admin
      unless current_user.admin?
        redirect_to root_url
      end 
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
  end
end
