class ReviewsController < ApplicationController

  def index
    @reviews = Reviews.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to @review
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  private

    def review_params
      params.require(:restaurant).permit(:name, :address, :phone_numer, :category)
    end

end
