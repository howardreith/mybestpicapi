class UserInfosController < ApplicationController
  before_action :set_user_info, only: [:show, :update, :destroy]

  # GET /user_infos
  def index
    @user_infos = UserInfo.all

    render json: @user_infos
  end

  # GET /user_infos/1
  def show
    render json: @user_info
  end

  # POST /user_infos
  def create
    @user_info = UserInfo.new(user_info_params)

    if @user_info.save
      render json: @user_info, status: :created, location: @user_info
    else
      render json: @user_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_infos/1
  def update
    if @user_info.update(user_info_params)
      render json: @user_info
    else
      render json: @user_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_infos/1
  def destroy
    @user_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_info
      @user_info = UserInfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_info_params
      params.require(:user_info).permit(:email, :password, :gender, :attracted_to, :user_rating,
      :age, :age_preference_min, :age_preference_max, :data_warehouse_open_date,
      :data_warehouse_close_date, :created_at, :updated_at, :user_id)
    end
end
