class SessionsController < ApplicationController

  def new
  end

  def create
  #   user = User.find_by(email: params[:email])
  #   # if the user exists AND the password entered is correct
  #   if user && user.authenticate(params[:password])
  #     # Save the user id inside the browser cookie which keeps the user logged in while navigating different pages in the website
  #     session[:user_id] = user.id

  #     redirect_to '/'
  #   else
  #     # if user's login fails send back to user page
  #     flash[:warning] = "Invalid username or password"
  #     redirect_to '/login'
  #   end
  # end

  # def destroy
  #   session[:user_id] = nil
  #   flash[:success] = "Successfully logged out!"
  #   redirect_to root_path
  end

end
