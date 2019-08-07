class ReviewsController < ApplicationController

before_action :set_review, only: [:show, :edit, :update, :destroy]
before_action :set_restaurant, only: [:new, :create]
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @review.update(review_params)

    redirect_to review_path(@review)
  end

  def destroy
    @review.destroy

    redirect_to reviews_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

