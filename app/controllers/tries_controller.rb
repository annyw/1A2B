class TriesController < ApplicationController
  before_action :set_try, only: [:show, :edit, :update, :destroy]

  # GET /tries
  # GET /tries.json
  def index
    @tries = Try.all
  end

  # GET /tries/1
  # GET /tries/1.json
  def show
  end

  # GET /tries/new
  def new
    @try = Try.new
  end

  # GET /tries/1/edit
  def edit
  end

  # POST /tries
  # POST /tries.json
  def create
    @try = Try.new(try_params)

    respond_to do |format|
      if @try.save
        format.html { redirect_to @try, notice: 'Try was successfully created.' }
        format.json { render :show, status: :created, location: @try }
      else
        format.html { render :new }
        format.json { render json: @try.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tries/1
  # PATCH/PUT /tries/1.json
  def update
    respond_to do |format|
      if @try.update(try_params)
        format.html { redirect_to @try, notice: 'Try was successfully updated.' }
        format.json { render :show, status: :ok, location: @try }
      else
        format.html { render :edit }
        format.json { render json: @try.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tries/1
  # DELETE /tries/1.json
  def destroy
    @try.destroy
    respond_to do |format|
      format.html { redirect_to tries_url, notice: 'Try was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_try
      @try = Try.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def try_params
      params.require(:try).permit(:try)
    end
end
