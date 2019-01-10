class EventnotifiersController < ApplicationController
  before_action :set_eventnotifier, only: [:show, :edit, :update, :destroy]

  # GET /eventnotifiers
  # GET /eventnotifiers.json
  def index
    @eventnotifiers = Eventnotifier.all
  end

  # GET /eventnotifiers/1
  # GET /eventnotifiers/1.json
  def show
  end

  # GET /eventnotifiers/new
  def new
    @eventnotifier = Eventnotifier.new
  end

  # GET /eventnotifiers/1/edit
  def edit
  end

  # POST /eventnotifiers
  # POST /eventnotifiers.json
  def create
    @eventnotifier = Eventnotifier.new(eventnotifier_params)

    respond_to do |format|
      if @eventnotifier.save
        format.html { redirect_to @eventnotifier, notice: 'Eventnotifier was successfully created.' }
        format.json { render :show, status: :created, location: @eventnotifier }
      else
        format.html { render :new }
        format.json { render json: @eventnotifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventnotifiers/1
  # PATCH/PUT /eventnotifiers/1.json
  def update
    respond_to do |format|
      if @eventnotifier.update(eventnotifier_params)
        format.html { redirect_to @eventnotifier, notice: 'Eventnotifier was successfully updated.' }
        format.json { render :show, status: :ok, location: @eventnotifier }
      else
        format.html { render :edit }
        format.json { render json: @eventnotifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventnotifiers/1
  # DELETE /eventnotifiers/1.json
  def destroy
    @eventnotifier.destroy
    respond_to do |format|
      format.html { redirect_to eventnotifiers_url, notice: 'Eventnotifier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventnotifier
      @eventnotifier = Eventnotifier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eventnotifier_params
      params.require(:eventnotifier).permit(:event_name, :event_subject, :event_company, :event_start, :event_end, :event_duration, :event_venue, :event_for, :event_chairman, :event_image, :event, :description, :event_sponser)
    end
end
