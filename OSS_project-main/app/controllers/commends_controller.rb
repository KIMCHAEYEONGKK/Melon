class CommendsController < ApplicationController
  before_action :set_commend, only: %i[ show edit update destroy ]

  # GET /commends or /commends.json
  def index
    @commends = Commend.all
  end

  # GET /commends/1 or /commends/1.json
  def show
  end

  # GET /commends/new
  def new
    @commend = Commend.new
  end

  # GET /commends/1/edit
  def edit
  end

  # POST /commends or /commends.json
  def create
    @commend = Commend.new(commend_params)

    respond_to do |format|
      if @commend.save
        format.html { redirect_to album_path(@commend.album_id), notice: "Commend was successfully created." }
        format.json { render :show, status: :created, location: @commend }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commends/1 or /commends/1.json
  def update
    respond_to do |format|
      if @commend.update(commend_params)
        format.html { redirect_to commend_url(@commend), notice: "Commend was successfully updated." }
        format.json { render :show, status: :ok, location: @commend }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commends/1 or /commends/1.json
  def destroy
    @commend.destroy
	  
    respond_to do |format|
	 
      format.html {  redirect_to album_path(@commend.album_id), notice: "Commend was successfully destroyed." }
      format.json { head :no_content }
	 # else
	 # format.html{ redirect_to album_path(@commend.album_id), notice: "본인이 작성한 댓글만 삭제가 가능합니다." }
	 # end
  end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commend
      @commend = Commend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commend_params
      params.require(:commend).permit(:commend, :user_id, :album_id)
    end
end
