class ReviewsController < ApplicationController

  def new
    @service = Service.find(params[:service_id])
    @review = Review.new
  end

  def create
    @service = Service.find(params[:service_id])
    @review = @service.reviews.new(review_params)
    if @review.save
      flash[:notice] = "Review Added"
      redirect_to service_path(@service)
    else
      flash[:alert] = "Something Went Wrong, Please Try Again"
      render :new
    end
  end

private
 def review_params
   params.require(:review).permit(:author, :content)
 end

end
