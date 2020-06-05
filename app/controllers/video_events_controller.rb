class VideoEventsController < ApplicationController
  before_action :set_video_event, only: [:show, :edit, :update, :destroy]

  # GET /video_events
  # GET /video_events.json
  def index
    @video_events = VideoEvent.all
  end

  # GET /video_events/1
  # GET /video_events/1.json
  def show
  end

  # GET /video_events/new
  def new
    @video_event = VideoEvent.new
  end

  # GET /video_events/1/edit
  def edit
  end

  # POST /video_events
  # POST /video_events.json
  def create
    @video_event = VideoEvent.new(video_event_params)

    respond_to do |format|
      if @video_event.save
        format.html { redirect_to @video_event, notice: 'Video event was successfully created.' }
        format.json { render :show, status: :created, location: @video_event }
      else
        format.html { render :new }
        format.json { render json: @video_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_events/1
  # PATCH/PUT /video_events/1.json
  def update
    respond_to do |format|
      if @video_event.update(video_event_params)
        format.html { redirect_to @video_event, notice: 'Video event was successfully updated.' }
        format.json { render :show, status: :ok, location: @video_event }
      else
        format.html { render :edit }
        format.json { render json: @video_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_events/1
  # DELETE /video_events/1.json
  def destroy
    @video_event.destroy
    respond_to do |format|
      format.html { redirect_to video_events_url, notice: 'Video event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video_event
      @video_event = VideoEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def video_event_params
      params.require(:video_event).permit(:content, :event_id_id)
    end
end
