class FirstModelsController < ApplicationController
  before_action :set_first_model, only: [:show, :edit, :update, :destroy]

  # GET /first_models
  # GET /first_models.json
  def index
    @first_models = FirstModel.all
  end

  # GET /first_models/1
  # GET /first_models/1.json
  def show
  end

  # GET /first_models/new
  def new
    @first_model = FirstModel.new
  end

  # GET /first_models/1/edit
  def edit
  end

  # POST /first_models
  # POST /first_models.json
  def create
    @first_model = FirstModel.new(first_model_params)

    respond_to do |format|
      if @first_model.save
        format.html { redirect_to @first_model, notice: 'First model was successfully created.' }
        format.json { render :show, status: :created, location: @first_model }
      else
        format.html { render :new }
        format.json { render json: @first_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /first_models/1
  # PATCH/PUT /first_models/1.json
  def update
    respond_to do |format|
      if @first_model.update(first_model_params)
        format.html { redirect_to @first_model, notice: 'First model was successfully updated.' }
        format.json { render :show, status: :ok, location: @first_model }
      else
        format.html { render :edit }
        format.json { render json: @first_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_models/1
  # DELETE /first_models/1.json
  def destroy
    @first_model.destroy
    respond_to do |format|
      format.html { redirect_to first_models_url, notice: 'First model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_model
      @first_model = FirstModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_model_params
      params.require(:first_model).permit(:url)
    end
end
