class BorrowRequestsController < OpenReadController

  before_action :set_borrow_request, only: [:update, :destroy]

  # GET /borrow_requests
  def index
    @borrow_request = BorrowRequest.all

    render json: @borrow_request
  end

  # GET /borrow_requests/1
  def show
    @borrow_request = BorrowRequest.find(params[:id])

    render json: @borrow_request
  end

  # POST /borrow_requests
  def create
    @borrow_request = current_user.borrow_requests.build(borrow_request_params)

    if @borrow_request.save
      render json: @borrow_request, status: :created, location: @borrow_request
    else
      render json: @borrow_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH /borrow_requests/1
  def update
    if @borrow_request.update(borrow_request_params)

      render json: @borrow_request
    else
      render json: @borrow_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /borrow_requests/1
  def destroy
    @borrow_request.destroy

    head :no_content
  end

  def set_borrow_request
    @borrow_request = current_user.borrow_requests.find(params[:id])
  end

  def borrow_request_params
    params.require(:borrow_request).permit(:user_id, :book_id, :due_back, :response, :request_date, :response_date)
  end

  private :set_borrow_request, :borrow_request_params

end
