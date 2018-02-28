class PitchersController < ApplicationController
  before_action :set_pitcher, only: [:show, :edit, :update, :destroy]

  # GET /pitchers
  # GET /pitchers.json
  def index
    @players = Pitcher.limit(100)
  end

  # GET /pitchers/1
  # GET /pitchers/1.json
  def show
  end

  # GET /pitchers/salary/xxxxxxx
  def show_by_salary
    #only returns one, should fix
    @players = Pitcher.where(salary:params[:salary]).distinct
    if @players.count > 1
      render :index
    elsif @players.count == 1
      @player = @players.first
      render :show
    end
  end

  # GET /pitchers/new
  def new
    @pitcher = Pitcher.new
  end

  # GET /pitchers/1/edit
  def edit
  end

  # POST /pitchers
  # POST /pitchers.json
  def create
    @pitcher = Pitcher.new(pitcher_params)

    respond_to do |format|
      if @pitcher.save
        format.html { redirect_to @pitcher, notice: 'Pitcher was successfully created.' }
        format.json { render :show, status: :created, location: @pitcher }
      else
        format.html { render :new }
        format.json { render json: @pitcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pitchers/1
  # PATCH/PUT /pitchers/1.json
  def update
    respond_to do |format|
      if @pitcher.update(pitcher_params)
        format.html { redirect_to @pitcher, notice: 'Pitcher was successfully updated.' }
        format.json { render :show, status: :ok, location: @pitcher }
      else
        format.html { render :edit }
        format.json { render json: @pitcher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pitchers/1
  # DELETE /pitchers/1.json
  def destroy
    @pitcher.destroy
    respond_to do |format|
      format.html { redirect_to pitchers_url, notice: 'Pitcher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pitcher
      @pitcher = Pitcher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pitcher_params
      params.fetch(:pitcher, {})
    end
end
