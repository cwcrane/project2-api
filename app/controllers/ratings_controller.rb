class RatingsController < OpenReadController

before_action :set_rating, only: [:update, :destroy]

  # GET /ratings
  def index
    @rating = Rating.all

    render json: @rating
  end

  # GET /ratings/1
  def show
    @rating = Rating.find(params[:id])

    render json: @rating
  end

  # POST /ratings
  def create
    @rating = current_user.ratings.build(rating_params)

    if @rating.save
      render json: @rating, status: :created, location: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # PATCH /ratings/1
  def update
    if @rating.update(rating_params)
      head :no_content
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ratings/1
  def destroy
    @rating.destroy

    head :no_content
  end

  def set_rating
    @rating = current_user.ratings.find(params[:id])
  end

  def rating_params
    params.require(:rating).permit(:book_id, :rating, :review, :date)
  end

  private :set_rating, :rating_params
end
