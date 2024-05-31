class CountdownEventsController < ApplicationController
  before_action :set_countdown_event, only: %i[ show edit update destroy ]

  # GET /countdown_events or /countdown_events.json
  def index
    @countdown_events = CountdownEvent.all
  end

  # GET /countdown_events/1 or /countdown_events/1.json
  def show
  end

  # GET /countdown_events/new
  def new
    @countdown_event = CountdownEvent.new
  end

  # GET /countdown_events/1/edit
  def edit
  end

  # POST /countdown_events or /countdown_events.json
  def create
    @countdown_event = CountdownEvent.new(countdown_event_params)

    respond_to do |format|
      if @countdown_event.save
        format.html { redirect_to countdown_event_url(@countdown_event), notice: "Countdown event was successfully created." }
        format.json { render :show, status: :created, location: @countdown_event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @countdown_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countdown_events/1 or /countdown_events/1.json
  def update
    respond_to do |format|
      if @countdown_event.update(countdown_event_params)
        format.html { redirect_to countdown_event_url(@countdown_event), notice: "Countdown event was successfully updated." }
        format.json { render :show, status: :ok, location: @countdown_event }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @countdown_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countdown_events/1 or /countdown_events/1.json
  def destroy
    @countdown_event.destroy!

    respond_to do |format|
      format.html { redirect_to countdown_events_url, notice: "Countdown event was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_countdown_event
      @countdown_event = CountdownEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def countdown_event_params
      params.require(:countdown_event).permit(:name, :description, :target, :image, :category_id)
    end

    def find_category
      
    end
end
