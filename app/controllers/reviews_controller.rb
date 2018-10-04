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
        @review.save
        redirect_to "/items/#{params[:review][:item_id]}"
    end

    def destroy

    end

    private

    def review_params
        params.require(:review).permit(:title, :rating, :user_id, :item_id, :review)
    end
      
       
end
