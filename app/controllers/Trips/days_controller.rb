class Trips::DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update, :destroy]

  # GET /days
  # GET /days.json
  def index
    @days = Day.all
  end

  # GET /days/1
  # GET /days/1.json
  def show
  end

  # GET /days/new
  def new
    @trip = Trip.find(params[:trip_id])
    @day = Day.new
  end

  # GET /days/1/edit
  def edit
    @trip = Trip.find(params[:trip_id])
    @day = Day.find(params[:id])
  end

  # POST /days
  # POST /days.json
  def create
    @trip = Trip.find(params[:trip_id])
    @day = Day.new(day_params)
    @day.trip = @trip

    respond_to do |format|
      if @day.save
        format.html { redirect_to @trip, notice: 'Day was successfully created.' }
        format.json { render :show, status: :created, location: @day }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /days/1
  # PATCH/PUT /days/1.json
  def update
    @trip = Trip.find(params[:trip_id])
    @day = Day.find(params[:id])

    respond_to do |format|
      if @day.update(day_params)
        format.html { redirect_to @trip, notice: 'Day was successfully updated.' }
        format.json { render :show, status: :ok, location: @day }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    @trip = Trip.find(params[:trip_id])
    @day = Day.find(params[:id])
    title = @day.title

    if @day.destroy
      flash[:notice] = "#{title} was deleted successfully."
      redirect_to @trip
    else
      flash[:error] = "There was an error deleting the day"
      render :show
    end
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_params
      params.require(:day).permit(:title, :description, :trip_id)
    end
end
