class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  skip_authorize_resource :only => :index

  # GET /events
  # GET /events.json
  def index
    # @events = Event.all

    if params[:id]
      # get all records with id less than 'our last id'
      # and limit the results to 5
      @events = Event.where('id < ?', params[:id]).limit(5)
    else
      @events = Event.limit(5)
    end

    respond_to do |format|
      format.html
      format.js
    end
  end


  # GET /events/1
  # GET /events/1.json
  def show
    @event = Event.find_by_id(params[:id])
    @users = DetailedUser.joins('JOIN event_registers ON event_registers.user_id = detailed_users.user_id WHERE event_id = ' + params[:id])
    @comments = Comment.where(event_id: params[:id])
  end

  # GET /events/new/1
  def new
    @event = Event.new
    #@sailings = Sailing.select('"sailings.id", (cruise_ship_name || "-" || official_id) AS cruise').order('cruise_ship_name ASC').uniq
    @sailings = Sailing.joins(:travelling_parties => {:party_registers => :user}).where("users.id" => current_user.id)

    if(@sailings.blank?)
      flash[:alert] = "you have not joined a sailing"
      redirect_to :back
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.joins(:event_registers).find_by("event_registers.event_id" => params[:id], "event_registers.user_id" => current_user.id)
    @sailings = Sailing.joins(:travelling_parties => {:party_registers => :user}).where("users.id" => current_user.id)
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)
    respond_to do |format|
      if @event.save
        # When a host adds an event, he/she gets automatically joined
        EventRegister.create(:user_id => current_user.id, :event_id => @event.id)
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  #POST /comment
  def comment
    @comment = Comment.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.html { redirect_to "/events/#{comment_params['event_id']}" }
        format.json { render :show, status: :created, location: "/events/#{params[:event]}" }
      else
        format.html { render :show }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
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
    event = Event.find_by_id(params[:id])
    sailing = Sailing.find_by_id(event.sailing_id).cruise_ship_name
    @event.destroy
    respond_to do |format|
      format.html { redirect_to user_dashboard_path, notice: "#{event.event_name} Event in #{sailing} cruise was successfully deleted."}
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
      params.fetch(:event, {}).permit(:creator_id,:sailing_id, :event_name, :start_date , :end_date, :location, :max_participants, :sailing_id, :description, :image)
    end

    def comment_params
      params.fetch(:comment, {}).permit(:user_id, :event_id, :text)
    end
end
