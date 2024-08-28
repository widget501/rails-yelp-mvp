class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    # @review = Review.new
    @review = Review.find(review_params)
  end

  def new
    # @restaurant = Restaurant.find(params[:id])
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
