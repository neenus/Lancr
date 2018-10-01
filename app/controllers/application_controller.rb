class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_customer
    @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end
  helper_method :current_customer

  def current_service_provider
    @current_service_provider ||= ServiceProvider.find(session[:service_provider_id]) if session[:service_provider_id]
  end
  helper_method :current_service_provider

  def authorize
    redirect_to '/login' unless current_customer || current_service_provider
  end

end
