class ChittersController < ApplicationController
  before_action :set_chitter, only: [:show, :edit, :update, :destroy]

  # GET /chitters
  # GET /chitters.json
  def index
    @chitters = Chitter.all
  end

  # GET /chitters/1
  # GET /chitters/1.json
  def show
  end

  # GET /chitters/new
  def new
    @chitter = Chitter.new
  end

  def profile

  end

  # GET /chitters/1/edit
  def edit
  end


  # POST /chitters
  # POST /chitters.json
  def create
    @chitter = Chitter.new(chitter_params)
    @chitter.user = current_user

    respond_to do |format|
      if @chitter.save
        format.html { redirect_to @chitter, notice: 'Chitter was successfully created.' }
        format.json { render :show, status: :created, location: @chitter }
      else
        format.html { render :new }
        format.json { render json: @chitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chitters/1
  # PATCH/PUT /chitters/1.json
  def update
    respond_to do |format|
      if @chitter.update(chitter_params)
        format.html { redirect_to @chitter, notice: 'Chitter was successfully updated.' }
        format.json { render :show, status: :ok, location: @chitter }
      else
        format.html { render :edit }
        format.json { render json: @chitter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chitters/1
  # DELETE /chitters/1.json
  def destroy
    @chitter.destroy
    respond_to do |format|
      format.html { redirect_to chitters_url, notice: 'Chitter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chitter
      @chitter = Chitter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chitter_params
      params.require(:chitter).permit(:user_id, :body)
    end
end
