class SessionTrackersController < ApplicationController
  before_action :set_session_tracker, only: [:show, :update, :destroy]

  # GET /session_trackers
  def index
    @session_trackers = SessionTracker.all

    render json: @session_trackers
  end

  # GET /session_trackers/1
  def show
    render json: @session_tracker
  end

  # POST /session_trackers
  def create
    @session_tracker = SessionTracker.new(session_tracker_params)

    if @session_tracker.save
      render json: @session_tracker, status: :created, location: @session_tracker
    else
      render json: @session_tracker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /session_trackers/1
  def update
    if @session_tracker.update(session_tracker_params)
      render json: @session_tracker
    else
      render json: @session_tracker.errors, status: :unprocessable_entity
    end
  end

  # DELETE /session_trackers/1
  def destroy
    @session_tracker.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_tracker
      @session_tracker = SessionTracker.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def session_tracker_params
      params.require(:session_tracker).permit(:id, :pictures_loaded, :pictures_reviewed, :pictures_needing_review,
      :sent_for_analysis, :isActive, :last_activity, :created_at, :updated_at,
      :user_id)
    end
end
