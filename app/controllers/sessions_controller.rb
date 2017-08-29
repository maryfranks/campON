class SessionsController < ApplicationController

  def new
    @user = User.new
    @user.save
  end

  def create

    # user = User.find_by_email(params[:email])
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to parks_path, notice: "Logged in!"
    else
      render "new"
    end
    # if user && user.authenticate(params[:email])
    #   session[:current_user_id] = user.id
    #   flash[:notice] = 'Login Successful'
    #   redirect_to root_path
    # if user.authenticate(params[:password])
    # session[:user_id] = user.id
    # redirect_to user_path, notice: 'Login Successful'

    # else
    # redirect_to root_path
    # flash.now[:alert] = "Login failed"
    # #  render action: 'new'
    # end
  end

  def destroy
    @current_user = session[:current_user_id] = nil
    flash[:notice] = "You have successfully logged out."
    redirect_to root_path
  end

end
