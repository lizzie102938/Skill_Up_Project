class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(params_review)
    @review.booking = @booking

    # this seems to always give review a user_skill_id of first review. WHY?

    @review.user_skill_id = @booking.user_skill_id
    authorize @review
    if @review.save!
      redirect_to dashboard_path
    else
      render
    end
  end

  private

  def params_review
    params.require(:review).permit(:title, :rating, :content)
  end
end
