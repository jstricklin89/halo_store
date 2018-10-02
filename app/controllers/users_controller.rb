class UsersController < ApplicationController
    

    def new

    end

    # def create
    #     return redirect_to(controller: 'users',
    #     action: 'new') if !params[:name] || params[:name].empty?
    #     session[:name] = params[:name]
    #     redirect_to controller: 'application', action: 'hello'
    # end

    # def destroy
    #     session.delete :name
    # redirect_to controller: 'application', action: 'hello'
    # end


    # private

    # def require_login
    #     return head(:forbidden) unless session.include? :user_id
    # end
end
