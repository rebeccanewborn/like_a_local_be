class Api::V1::ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    if @review.valid?
      @review.save
      @excursion = Excursion.find(params[:review][:excursion_id])
      render json: @excursion
    else
      render json: {error: @review.errors}, status: 400
    end
  end

  private
  def review_params
    params.require(:review).permit(:excursion_rating, :excursion_review, :host_rating, :host_review, :user_id, :excursion_id)
  end
end
