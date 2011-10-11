class SessionsController < ApplicationController
  def create
    auth_hash = request.env['omniauth.auth']
   
    if session[:user_id]
      User.find(session[:user_id]).add_provider(auth_hash)
      render :text => "You can now login using #{auth_hash["provider"].capitalize} too!"
    else
      auth = Authorization.find_or_create(auth_hash)
      session[:user_id] = auth.user.id
      redirect_to dashboard_path, :notice => "Logged in."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, :notice => "Logged out."
  end

  def login_failure
    render :text => "Login failure."
  end

  def registration_failure
    render :text => "Registration failure."
  end

end
