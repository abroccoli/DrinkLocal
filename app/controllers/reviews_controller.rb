class ReviewsController < ApplicationController
  # GET /reviews
  # GET /reviews.json
  def index
    @brewery = Brewery.find(params[:brewery_id])
    @reviews = @brewery.reviews
  end

  # POST /reviews
  # POST /reviews.json
  def create
      @brewery = Brewery.find(params[:brewery_id])
      @review = @brewery.reviews.create(review_params)
      redirect_to brewery_path(@brewery)
  end


  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'Review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:title, :body, :rating, :brewery)
    end
end
