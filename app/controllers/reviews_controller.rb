class ReviewsController < ApplicationController
  def show
    @reviews = Review
  end
end
