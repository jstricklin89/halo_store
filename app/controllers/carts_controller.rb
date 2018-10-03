class CartsController < ApplicationController
    def index
    end

    def show
        # @cart = Cart.find(params[:cart.id])
    end

    def destroy
        Cart.find(params[:id]).destroy
    redirect_to items_url
    end

end
