class RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters #, :only => [:create]

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :birthday, :sex, :school])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :birthday, :sex, :school])
    end
end