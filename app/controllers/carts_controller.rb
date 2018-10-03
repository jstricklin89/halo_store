class CartsController < ApplicationController
    def index
    end

    def edit 
        
        if @cart = Cart.find(params[:id])
            @cart_items = CartItem.all
        else Cart.create(user_id: params[:user_id])
            @cart_items = CartItem.all
        end
    end

    def edit
        @cart = Cart.find_by_id(params[:id])
        @cart_items = CartItem.all
    end

    def destroy
        Cart.find(params[:id]).destroy
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
