class BattersController < ApplicationController
  before_action :set_batter, only: [:edit, :update, :destroy]

  # GET /batters
  # GET /batters.json
  def index
    @batters = Batter.limit(100)
    if params[:salary]
      show
    end
  end

  # GET /batters/1
  # GET /batters/1.json
  def show
    #TODO: copypasta from batters, should figure out how to share code
    # Feels like show and search shouldn't be munged together like this
    # also using "salary" in place of generalized search term
    if params[:salary]
      search = params[:salary]

      if regex_is_number? search
        @batters = Batter.where(salary:search.gsub(",","").to_i).distinct
      else
        # note this currently requires EXACT match of last name, should improve it
        @batters = Batter.where(lname:search).order(:season, salary: :desc)
      end
      if @batters.count == 1
        @batter = @batters.first
      else
        @salaryForm = true
        render :index
      end

    elsif params[:id]
      set_batter
    end
  end



  # GET /batters/new
  def new
    @batter = Batter.new
  end

  # GET /batters/1/edit
  def edit
  end

  # POST /batters
  # POST /batters.json
  def create
    @batter = Batter.new(batter_params)

    respond_to do |format|
      if @batter.save
        format.html { redirect_to @batter, notice: 'Batter was successfully created.' }
        format.json { render :show, status: :created, location: @batter }
      else
        format.html { render :new }
        format.json { render json: @batter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /batters/1
  # PATCH/PUT /batters/1.json
  def update
    respond_to do |format|
      if @batter.update(batter_params)
        format.html { redirect_to @batter, notice: 'Batter was successfully updated.' }
        format.json { render :show, status: :ok, location: @batter }
      else
        format.html { render :edit }
        format.json { render json: @batter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batters/1
  # DELETE /batters/1.json
  def destroy
    @batter.destroy
    respond_to do |format|
      format.html { redirect_to batters_url, notice: 'Batter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batter
      @batter = Batter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def batter_params
      params.fetch(:batter, {})
    end
end
