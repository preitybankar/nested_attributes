class WorkingEndTimesController < ApplicationController
  before_action :set_working_end_time, only: [:show, :edit, :update, :destroy]

  # GET /working_end_times
  # GET /working_end_times.json
  def index
    @working_end_times = WorkingEndTime.all
  end

  # GET /working_end_times/1
  # GET /working_end_times/1.json
  def show
  end

  # GET /working_end_times/new
  def new
    @working_end_time = WorkingEndTime.new
  end

  # GET /working_end_times/1/edit
  def edit
  end

  # POST /working_end_times
  # POST /working_end_times.json
  def create
    @working_end_time = WorkingEndTime.new(working_end_time_params)

    respond_to do |format|
      if @working_end_time.save
        format.html { redirect_to @working_end_time, notice: 'Working end time was successfully created.' }
        format.json { render action: 'show', status: :created, location: @working_end_time }
      else
        format.html { render action: 'new' }
        format.json { render json: @working_end_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /working_end_times/1
  # PATCH/PUT /working_end_times/1.json
  def update
    respond_to do |format|
      if @working_end_time.update(working_end_time_params)
        format.html { redirect_to @working_end_time, notice: 'Working end time was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @working_end_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /working_end_times/1
  # DELETE /working_end_times/1.json
  def destroy
    @working_end_time.destroy
    respond_to do |format|
      format.html { redirect_to working_end_times_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_working_end_time
      @working_end_time = WorkingEndTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def working_end_time_params
      params.require(:working_end_time).permit(:client_id, :monday, :tuesday, :wednesday, :friday, :satruday, :sunday)
    end
end
