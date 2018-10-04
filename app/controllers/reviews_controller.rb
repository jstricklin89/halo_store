class ReviewsController < ApplicationController
    def index
        redirect_to root
      end
  
      def show
       
    end
    
    def new
    end
    
    def create
        @review = Review.new(review_params)
        if @review.save
            redirect_to "/items/#{params[:item_id]}"
        else
            redirect_to "/items/#{params[:item_id]}"
        end
        
    end

    def destroy

    end

    private

    def review_params
        params.require(:review).permit(:title, :rating, :user_id, :item_id, :review)
    end
      
       
end
