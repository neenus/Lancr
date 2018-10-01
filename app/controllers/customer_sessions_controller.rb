class CustomerSessionsController < ApplicationController
  def new
  end

  def create
    customer = Customer.find_by(email: params[:email])
    # if the user exists AND the password entered is correct
    if customer && customer.authenticate(params[:password])
      # Save the customer id inside the browser cookie which keeps the user logged in while navigating different pages in the website
      session[:customer_id] = customer.id

      redirect_to '/'
    else
      # if user's login fails send back to user page
      flash[:warning] = "Invalid email or password"
      redirect_to '/login'
    end
  end

  def destroy
    session[:customer_id] = nil
    flash[:success] = "Successfully logged out!"
    redirect_to root_path
  end
end
