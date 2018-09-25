class PictureMeasurementsController < ApplicationController
  before_action :set_picture_measurement, only: [:show, :update, :destroy]

  # GET /picture_measurements
  def index
    @picture_measurements = PictureMeasurement.all

    render json: @picture_measurements
  end

  # GET /picture_measurements/1
  def show
    render json: @picture_measurement
  end

  # POST /picture_measurements
  def create
    @picture_measurement = PictureMeasurement.new(picture_measurement_params)

    if @picture_measurement.save
      render json: @picture_measurement, status: :created, location: @picture_measurement
    else
      render json: @picture_measurement.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /picture_measurements/1
  def update
    if @picture_measurement.update(picture_measurement_params)
      render json: @picture_measurement
    else
      render json: @picture_measurement.errors, status: :unprocessable_entity
    end
  end

  # DELETE /picture_measurements/1
  def destroy
    @picture_measurement.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_measurement
      @picture_measurement = PictureMeasurement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def picture_measurement_params
      params.require(:picture_measurement).permit(:id, :picture_id, :picture_rating, :created_at, :updated_at)
    end
end
