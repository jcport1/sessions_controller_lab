class SessionsController < ApplicationController
  def new

   #leave blank because we're not passing anything through her
   #we're only rendering the login view which is found inside the session new.html erb
   #the view corresponds to the controller name & action
  end

  def create

    if params[:name].nil? || params[:name].empty? 
      redirect_to '/login' 
    else 
      #by setting the session[:username] equal to the params[:username], we are logging in the current user 
      session[:name] = params[:name]
      #redirect to root page if logged in
      redirect_to '/'
    end

  end

  def destroy 
    #this deletes the username from the sessions hash
    #which effectively logs the userout 
    session.delete :name
    # redirect_to "application/hello"
  end
end
