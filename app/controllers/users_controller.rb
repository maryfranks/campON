class UsersController < ApplicationController
before_action :authorize, except: [:new, :create]
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save && session[:redirect].present?
      redirect_to session[:redirect]
    elsif @user.save
      # auto_login(@user)
      flash.now[:notice] = 'Account successfully created!'
      redirect_to user_path
    else
      flash.now[:error] = 'Sorry, try again!'
      render :new
    end
  end

  def update
    current_user
  end

  def show
    @user = current_user
    @trips = @user.trips
  end


  private

  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end


end
