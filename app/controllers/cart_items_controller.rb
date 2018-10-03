class CartItemsController < ApplicationController
  def destroy
    CartItem.find(params[:id]).destroy
    redirect_to edit_cart_url
  end
end
