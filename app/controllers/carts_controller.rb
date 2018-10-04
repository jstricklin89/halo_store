class CartsController < ApplicationController
    
    before_action :redirect_to_login_page_if_not_logged_in, except: [:new, :show, :create]

    def index
        redirect_to root
    end
    
    def edit 
        session[:total] = []
        if session[:cart_id] > 0
            @cart = Cart.find(session[:cart_id])
            @cart_items = CartItem.all
        else session[:cart_id] == nil
            Cart.create(user_id: session[:user_id])
            @cart_items = CartItem.all
        end
    end

    def show
        if session[:cart_id]
            @cart = Cart.find(session[:cart_id])
            @cart_items = CartItem.all
        else
            redirect_to login_path
        end
    end

    def destroy
        Cart.find(params[:id]).destroy
        session[:cart_id] = nil
        session[:total] = nil
        cart = Cart.create(user_id: session[:user_id])
        session[:cart_id] = cart.id
    redirect_to items_url
    end

    def self.sum(cart)
        sum = 0
        cart.cart_items.each do |item|
            sum += item.item.price * item.quantity
        end
        sum
    end

    private

    def cart_params
        params.require(:cart).permit(:user_id)
    end

    def cart_item_params
        params.require(:cart_items).permit(:item_id, :cart_id, :quantity)
    end

end
