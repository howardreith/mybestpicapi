class PictureFlagsController < ApplicationController
  before_action :set_picture_flag, only: [:show, :update, :destroy]

  # GET /picture_flags
  def index
    @picture_flags = PictureFlag.all

    render json: @picture_flags
  end

  # GET /picture_flags/1
  def show
    render json: @picture_flag
  end

  # POST /picture_flags
  def create
    @picture_flag = PictureFlag.new(picture_flag_params)

    if @picture_flag.save
      render json: @picture_flag, status: :created, location: @picture_flag
    else
      render json: @picture_flag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /picture_flags/1
  def update
    if @picture_flag.update(picture_flag_params)
      render json: @picture_flag
    else
      render json: @picture_flag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /picture_flags/1
  def destroy
    @picture_flag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_flag
      @picture_flag = PictureFlag.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def picture_flag_params
      params.require(:picture_flag).permit(:id, :picture_id, :report_id, :flag_category, :review_status,
      :data_warehouse_open_date, :data_warehouse_close_date)
    end
end
