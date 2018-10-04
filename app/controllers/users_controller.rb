class UsersController < ApplicationController
    def show
      @transactions = Transaction.all
        @user = User.find(params[:id])
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
          Cart.create(user_id: user.id)
          session[:user_id] = user.id
          redirect_to user
        else
          flash[:error]
          redirect_to new_user_path
        end
      end
    
      private
    
      def user_params
        params.require(:user).permit(:username, :password, :password_confirmation, :secret)
      end
end
