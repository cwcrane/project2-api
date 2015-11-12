class ProfilesController < OpenReadController
  #before filter method, requiring set_book to run first for update and destroy
  before_action :set_profile, only: [:update, :destroy]

  # GET /profiles
  def index
    @profiles = Profile.all

    render json: @profiles
  end

  # GET /profiles/1
  def show
    @profile = Profile.find(params[:id])

    render json: @profile
  end

  # POST /profiles
  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      render json: @profile, status: :created, location: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH /profiles/1
  def update
    if @profile.update(profile_params)
      head :no_content
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profiles/1
  def destroy
    @profile.destroy

    head :no_content
  end

  def set_profile
    @profile = current_user.profile
  end

  def profile_params
    params.require(:profile).permit(:user_id, :first_name, :last_name, :address_street, :city, :state, :phone)
  end

  private :set_profile, :profile_params

end
