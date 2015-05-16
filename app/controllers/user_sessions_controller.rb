class UserSessionsController < ApplicationController
   def new
   
  end

  def create
     user = login(params[:email], params[:password], params[:remember_me])
    if user
      redirect_to criteria_url, :notice => "You are Logged in"
    else
      redirect_to :login, :alert => "Invalid Username or Password"
     
    end
  end
  
  def destroy
  
  redirect_to root_url, :notice => "Succesfully Logged out"
   logout 
  end
end