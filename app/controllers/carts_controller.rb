class CartsController < ApplicationController
    def index
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
        @cart = Cart.find(session[:cart_id])
        @cart_items = CartItem.all
    end

    def destroy
        Cart.find(params[:id]).destroy
        session[:cart_id] = nil
        session[:total] = nil
        cart = Cart.create(user_id: session[:user_id])
        session[:cart_id] = cart.id
    redirect_to items_url
    end

    private

    def cart_params
        params.require(:cart).permit(:user_id)
    end

    def cart_item_params
        params.require(:cart_items).permit(:item_id, :cart_id, :quantity)
    end

end
