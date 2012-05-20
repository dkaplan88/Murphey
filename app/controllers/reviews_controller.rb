class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end
  
  def new
    @review = Review.new
    @item = Item.all
    @user = User.all
  end
  
  def create 
    @review = Review.new(params[:review])
    if @review.save
      redirect_to root_url, notice: "Review Added!" 
    else
      redirect_to new_review_url, notice: "Rating Must Be Between 0-5"
    end
  end
end