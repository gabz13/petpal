class ReviewsController < ApplicationController
  def index
    @reviews = policy_scope(Review).where(user: current_user)
  end

  def create
    @review = Review.new(review_params)
    @animal = Animal.find(params[:animal_id])
    @review.animal = @animal
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to animal_path(@animal)
    else
       render :create
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
