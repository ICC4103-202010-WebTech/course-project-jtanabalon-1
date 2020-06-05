class FileEventsController < ApplicationController
  before_action :set_file_event, only: [:show, :edit, :update, :destroy]

  # GET /file_events
  # GET /file_events.json
  def index
    @file_events = FileEvent.all
  end

  # GET /file_events/1
  # GET /file_events/1.json
  def show
  end

  # GET /file_events/new
  def new
    @file_event = FileEvent.new
  end

  # GET /file_events/1/edit
  def edit
  end

  # POST /file_events
  # POST /file_events.json
  def create
    @file_event = FileEvent.new(file_event_params)

    respond_to do |format|
      if @file_event.save
        format.html { redirect_to @file_event, notice: 'File event was successfully created.' }
        format.json { render :show, status: :created, location: @file_event }
      else
        format.html { render :new }
        format.json { render json: @file_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /file_events/1
  # PATCH/PUT /file_events/1.json
  def update
    respond_to do |format|
      if @file_event.update(file_event_params)
        format.html { redirect_to @file_event, notice: 'File event was successfully updated.' }
        format.json { render :show, status: :ok, location: @file_event }
      else
        format.html { render :edit }
        format.json { render json: @file_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /file_events/1
  # DELETE /file_events/1.json
  def destroy
    @file_event.destroy
    respond_to do |format|
      format.html { redirect_to file_events_url, notice: 'File event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_file_event
      @file_event = FileEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def file_event_params
      params.require(:file_event).permit(:content, :event_id_id)
    end
end
