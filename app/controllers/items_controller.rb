class ItemsController < ApplicationController

    def index
        if params[:name]
            @items = Item.select {|item| item.name.downcase.include?(params[:name].downcase)}
        else
        @items = Item.all
        end
    end

    def show
        @item = Item.find(params[:id])
    end

    def search
        if params[:category_id]
            @items = Item.all.select do |item|
                item.category_id == params[:category_id].to_i
            end
        end
        render :index
    end
end

