class ItemsController < ApplicationController

    def index
        if params[:name]
            @items = Item.where('name LIKE ?', "%{params[:name]}%")
        else
        @items = Item.all
        end
    end

    def show
        @item = Item.find(params[:id])
    end

    # def search
        # if params[:category_id]
        #     @items = Item.all.select do |item|
        #         item.category_id == params[:category_id].to_i
        #     end
    #     @items = Item.all.select do |item|
            
    #     if params[:query]
    #             item.name.downcase == params[:query].downcase
    #         end
    #     end
    #     render :index
    # end
end

