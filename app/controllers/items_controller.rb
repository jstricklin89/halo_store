class ItemsController < ApplicationController

    def index
        # if params[:name]
        @items = Item.all
    end

    def show
        @item = Item.find(params[:id])
    end

    def search
        # if params[:category_id]
        #     @items = Item.all.select do |item|
        #         item.category_id == params[:category_id].to_i
        #     end
        @items = Item.all.select do |item|
            
        if params[:query]
                item.name.downcase == params[:query].downcase
            end
        end
        render :index
    end


    private

    def item_params

    end
end

