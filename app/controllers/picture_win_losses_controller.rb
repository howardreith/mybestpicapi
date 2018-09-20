class PictureWinLossesController < ApplicationController
  before_action :set_picture_win_loss, only: [:show, :update, :destroy]

  # GET /picture_win_losses
  def index
    @picture_win_losses = PictureWinLoss.all

    render json: @picture_win_losses
  end

  # GET /picture_win_losses/1
  def show
    render json: @picture_win_loss
  end

  # POST /picture_win_losses
  def create
    @picture_win_loss = PictureWinLoss.new(picture_win_loss_params)

    if @picture_win_loss.save
      render json: @picture_win_loss, status: :created, location: @picture_win_loss
    else
      render json: @picture_win_loss.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /picture_win_losses/1
  def update
    if @picture_win_loss.update(picture_win_loss_params)
      render json: @picture_win_loss
    else
      render json: @picture_win_loss.errors, status: :unprocessable_entity
    end
  end

  # DELETE /picture_win_losses/1
  def destroy
    @picture_win_loss.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_win_loss
      @picture_win_loss = PictureWinLoss.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def picture_win_loss_params
      params.fetch(:picture_win_loss, {})
    end
end
