class ReviewsController < ApplicationController
  def new
     @restaurant = Restaurant.find(params[:restaurant_id])
     @review = Review.new
  end

  def create
      @review = Review.new(review_params)
      # we need `restaurant_id` to associate review with corresponding restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
      @review.restaurant = @restaurant
      if @review.save
        redirect_to restaurant_path(@restaurant)
      else
        render 'new.html.erb'
      end
  end
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # @review = Review.new(review_params)
    # if @review.save
    #   redirect_to review_path(@review)
    # else
    #   render 'new.html.erb'
    # end




  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
