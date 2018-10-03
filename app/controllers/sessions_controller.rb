class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      cart = Cart.create(user_id: user.id)
      session[:cart_id] = cart.id
      session[:total] = []
      redirect_to user
    else
      flash[:error] = 'Sorry, please try again'
      redirect_to login_path
    end
  end

  def destroy
    Cart.find_by(user_id: session[:user_id]).destroy
    session[:user_id] = nil
    session[:cart_id] = nil
    session[:total] = nil

    redirect_to login_path
  end
end
