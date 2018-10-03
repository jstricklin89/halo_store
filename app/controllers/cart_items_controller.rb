class CartItemsController < ApplicationController 
    
    def show
        @cartitem = CartItem.find(params[:id])
    end
    
    def add_item_to_cart
        CartItem.create!(cart_id: session[:cart_id], item_id: params[:item_id], quantity: 1)

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

    def update
      @cart_item = CartItem.find_by(cart_id: params[:cart_item][:cart_id], item_id: params[:cart_item][:item_id])
  
      @cart_item.update(cart_item_params)
      @cart_item.save
      redirect_to edit_cart_url(@cart_item.cart)
  end

    def destroy
      CartItem.find(params[:id]).destroy
      redirect_to edit_cart_url
    end


    private

    def cart_item_params
        params.require(:cart_item).permit(:cart_id, :item_id, :quantity)
    end
end
