class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create

    @user = User.new(user_params)

    if @user.save
      auto_login(@user )
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

  def destroy
  end

  def show
    if @user = current_user
      @trips = @user.trips
    else
    flash.now[:notice] = "Please Login"
    redirect_to new_user_path
  end
  end

  private

  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end


end
