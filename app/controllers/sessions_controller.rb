class SessionsController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by_email(params[:user][:email])
    password = params[:user][:password]

    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to user, notice: "Logged in"
    else
      redirect_to login_path, alert: "Incorrect email or password"
    end
  end

  def destroy
    reset_session
    redirect_to login_path, notice: "Logged out"
  end
end
