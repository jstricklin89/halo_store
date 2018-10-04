class ApplicationController < ActionController::Base

    def redirect_to_login_page_if_not_logged_in
        if !session[:user_id]
          redirect_to login_path
        end
      end

    # before_action :require_login
    # skip_before_action :require_login, only: [:index]
    
    private

    def require_login
        return head(:forbidden) unless session.include? :user_id
      end
end
