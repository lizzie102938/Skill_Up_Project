class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(params_review)
    @review.booking = @booking
    @booking.user_skill
    # @review.user_skill = @booking.user_skill
    # @review.user = @booking.teacher
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
