class PagesController < ApplicationController
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
