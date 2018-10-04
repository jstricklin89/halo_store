class PagesController < ApplicationController
  # before_action :redirect_to_login_page_if_not_logged_in, except: [:new, :create]
  def index
    @categories = Category.all 
    @items = Item.all
  end


  def new

  end


  def create

  end

  def show

  end
end
