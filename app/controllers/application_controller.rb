class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :configure_permitted_parameters, if: :devise_controller?
  # private 
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) << :name
  # end 
  before_filter :configure_permitted_parameters, if: :devise_controller?
 
  include ApplicationHelper

  protected
 
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
      # def default_url_options() {privateIp: '10.0.0.73', containerPort: '3000', languageName: 'rails'}.merge(super) end
end
