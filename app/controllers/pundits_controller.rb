class PunditsController < ApplicationController
  before_action :set_pundit, only: [:show, :edit, :update, :destroy, :new_prediction]

  # GET /pundits
  # GET /pundits.json
  def index
    @pundits = Pundit.all
  end

  # GET /pundits/1
  # GET /pundits/1.json
  def show
  end

  # GET /pundits/new
  def new
    @pundit = Pundit.new
  end

  # GET /pundits/1/edit
  def edit
  end

  # POST /pundits
  # POST /pundits.json
  def create
    @pundit = Pundit.new(pundit_params)

    respond_to do |format|
      if @pundit.save
        format.html { redirect_to @pundit, notice: 'Pundit was successfully created.' }
        format.json { render :show, status: :created, location: @pundit }
      else
        format.html { render :new }
        format.json { render json: @pundit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pundits/1
  # PATCH/PUT /pundits/1.json
  def update
    respond_to do |format|
      if @pundit.update(pundit_params)
        format.html { redirect_to @pundit, notice: 'Pundit was successfully updated.' }
        format.json { render :show, status: :ok, location: @pundit }
      else
        format.html { render :edit }
        format.json { render json: @pundit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pundits/1
  # DELETE /pundits/1.json
  def destroy
    @pundit.destroy
    respond_to do |format|
      format.html { redirect_to pundits_url, notice: 'Pundit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def new_prediction
    @prediction = @pundit.predictions.build()
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pundit
      @pundit = Pundit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pundit_params
      params.require(:pundit).permit(:name)
    end
end
