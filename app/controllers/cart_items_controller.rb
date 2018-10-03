class CartItemsController < ApplicationController

    def show
        @cartitem = CartItem.find(params[:id])
    end

    def add_item_to_cart
        CartItem.create!(cart_id: 1, item_id: params[:item_id], quantity: 1)

        redirect_to items_path
    end
        
    def create
        @cartitem = CartItem.new(cart_item_params)
        if @cartitem.valid?
            @cartitem.save
            redirect_to items_url
        else
            render :new
        end
    end

        private

    def cart_item_params
        params.require(:cartitem).permit(:cart_id, :item_id, :quantity)
    end
end