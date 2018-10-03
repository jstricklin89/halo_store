class CartsController < ApplicationController
    def index
    end

    def show
        # @cart = Cart.find(params[:cart.id])
    end

    def edit
        @cart = Cart.find_by_id(params[:id])
        @cart_items = CartItem.all
    end

    # def update
    #     @cart_item = CartItem.find(cart_item_params)
    
    #     @cart_item.update(cart_item_params)
    #     @cart_item.save
    #     # if @cart_item.valid?
    #     #   @cart_item.save
    #     #   redirect_to @cart_item
    #     # else
    #     #   render :edit
    #     # end
    #     redirect_to carts_edit_url
    # end

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
