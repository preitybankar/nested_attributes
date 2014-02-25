class WorkingStartTimesController < ApplicationController
  before_action :set_working_start_time, only: [:show, :edit, :update, :destroy]

  # GET /working_start_times
  # GET /working_start_times.json
  def index
    @working_start_times = WorkingStartTime.all
  end

  # GET /working_start_times/1
  # GET /working_start_times/1.json
  def show
  end

  # GET /working_start_times/new
  def new
    @working_start_time = WorkingStartTime.new
  end

  # GET /working_start_times/1/edit
  def edit
  end

  # POST /working_start_times
  # POST /working_start_times.json
  def create
    @working_start_time = WorkingStartTime.new(working_start_time_params)

    respond_to do |format|
      if @working_start_time.save
        format.html { redirect_to @working_start_time, notice: 'Working start time was successfully created.' }
        format.json { render action: 'show', status: :created, location: @working_start_time }
      else
        format.html { render action: 'new' }
        format.json { render json: @working_start_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /working_start_times/1
  # PATCH/PUT /working_start_times/1.json
  def update
    respond_to do |format|
      if @working_start_time.update(working_start_time_params)
        format.html { redirect_to @working_start_time, notice: 'Working start time was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @working_start_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /working_start_times/1
  # DELETE /working_start_times/1.json
  def destroy
    @working_start_time.destroy
    respond_to do |format|
      format.html { redirect_to working_start_times_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_working_start_time
      @working_start_time = WorkingStartTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def working_start_time_params
      params.require(:working_start_time).permit(:client_id, :monday, :tuesday, :wednesday, :friday, :satruday, :sunday)
    end
end
