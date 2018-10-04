class UsersController < ApplicationController

    before_action :redirect_to_login_page_if_not_logged_in, except: [:new, :show, :create]

    def index
      redirect_to root
    end

    def show
      @transactions = Transaction.all
        @user = User.find(session[:user_id])
        if session[:user_id] == params[:id].to_i
          @current_user = @user
        end
      end
    
      def new
      end
    
      def create
        user = User.new(user_params)
        if user.valid?
          user.save
          cart = Cart.create(user_id: user.id)
          session[:user_id] = user.id
          session[:cart_id] = cart.id
          redirect_to user
        else
          flash[:error] = 'Please try again. Requirements: Must have username. Must have password between 3-20 characters.'
          redirect_to new_user_path
        end
      end

      def edit
        @user = User.find_by_id(params[:id])
      end

      def update
        @user = User.find_by_id(params[:id])
        @user.update(edit_params)
      
        if @user.save!
            redirect_to user_path(@user)
        else
            render :edit
        end

      end
    
      private

      def edit_params
        params.require(:user).permit(:username, :nickname, :secret)
      end
    
      def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :nickname, :secret)
      end
end
