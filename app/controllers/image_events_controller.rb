class ImageEventsController < ApplicationController
  before_action :set_image_event, only: [:show, :edit, :update, :destroy]

  # GET /image_events
  # GET /image_events.json
  def index
    @image_events = ImageEvent.all
  end

  # GET /image_events/1
  # GET /image_events/1.json
  def show
  end

  # GET /image_events/new
  def new
    @image_event = ImageEvent.new
  end

  # GET /image_events/1/edit
  def edit
  end

  # POST /image_events
  # POST /image_events.json
  def create
    @image_event = ImageEvent.new(image_event_params)

    respond_to do |format|
      if @image_event.save
        format.html { redirect_to @image_event, notice: 'Image event was successfully created.' }
        format.json { render :show, status: :created, location: @image_event }
      else
        format.html { render :new }
        format.json { render json: @image_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_events/1
  # PATCH/PUT /image_events/1.json
  def update
    respond_to do |format|
      if @image_event.update(image_event_params)
        format.html { redirect_to @image_event, notice: 'Image event was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_event }
      else
        format.html { render :edit }
        format.json { render json: @image_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_events/1
  # DELETE /image_events/1.json
  def destroy
    @image_event.destroy
    respond_to do |format|
      format.html { redirect_to image_events_url, notice: 'Image event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_event
      @image_event = ImageEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def image_event_params
      params.require(:image_event).permit(:content, :event_id_id)
    end
end
