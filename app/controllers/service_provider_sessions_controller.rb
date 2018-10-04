class ServiceProviderSessionsController < ApplicationController
  def new
  end

  def create
    service_provider = ServiceProvider.find_by(email: params[:email])
    # if the user exists AND the password entered is correct
    if service_provider && service_provider.authenticate(params[:password])
      # Save the service_provider id inside the browser cookie which keeps the user logged in while navigating different pages in the website
      session[:service_provider_id] = service_provider.id

      redirect_to '/'
    else
      # if user's login fails send back to user page

      redirect_to '/sp-login', :notice => "Invalid email or password!"
    end
  end

  def destroy
    session[:service_provider_id] = nil
    flash[:success] = "Successfully logged out!"
    redirect_to root_path
  end
end
