class PictureInfosController < ApplicationController
  before_action :set_picture_info, only: [:show, :update, :destroy]

  # GET /picture_infos
  def index
    @picture_infos = PictureInfo.all

    render json: @picture_infos
  end

  # GET /picture_infos/1
  def show
    render json: @picture_info
  end

  # POST /picture_infos
  def create
    @picture_info = PictureInfo.new(picture_info_params)

    if @picture_info.save
      render json: @picture_info, status: :created, location: @picture_info
    else
      render json: @picture_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /picture_infos/1
  def update
    if @picture_info.update(picture_info_params)
      render json: @picture_info
    else
      render json: @picture_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /picture_infos/1
  def destroy
    @picture_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_info
      @picture_info = PictureInfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def picture_info_params
      params.require(:picture_info).permit(:id, :picture_id, :aws_id, :title, :filename, :filepath,
      :aws_url, :data_warehouse_open_date, :data_warehouse_close_date,
      :created_at, :updated_at)
    end
end
