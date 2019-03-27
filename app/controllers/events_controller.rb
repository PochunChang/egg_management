class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    @users = User.all

    #calculating weeks
    start_date = params['start_date']
    if start_date == nil
      current_monday = Date.parse("Monday")
      @next_monday = current_monday + 7
      @previous_week = current_monday - 1
    else
      start_date = Date.parse(start_date)
      wday = start_date.wday
      if wday == 0
        @previous_week = start_date - 7
        @next_monday = start_date + 1
      else
        @previous_week = start_date - 1
        @next_monday = start_date + 7
      end
    end
    @next_monday = @next_monday.strftime("%Y-%m-%d")
    @previous_week = @previous_week.strftime("%Y-%m-%d")

  end

  # GET /events/1
  # GET /events/1.json
  def show

  end

  # GET /events/new
  def new
    @event = Event.new
    @event.user_id = params[:user_id]
    @event.start_time = params[:date]
    @event.end_time = params[:date]
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event}
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :content, :user_id, :start_time, :end_time, :destination, :region, :cost, :schedule_type, :markup, :transportation, :confirmed, :important, :rest, :done, :lightbulb, :triangle, :celebrate, :star)
    end
end
