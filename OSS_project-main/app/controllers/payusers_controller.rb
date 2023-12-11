class PayusersController < ApplicationController
  before_action :set_payuser ,only: %i[ show edit update destroy ]

  # GET /payusers or /payusers.json
  def index
    @payusers = Payuser.all
	@pay_t = Payuser.where(user_id: current_user.id).size > 0 
  end

  # GET /payusers/1 or /payusers/1.json
  def show
  end
	

  # GET /payusers/new
  def new
    @payuser = Payuser.new
  end

  # GET /payusers/1/edit
  def edit
  end

  # POST /payusers or /payusers.json
  def create
    @payuser = Payuser.new(payuser_params)

    respond_to do |format|
      if @payuser.save
        format.html { redirect_to root_path, notice: "Payuser was successfully created." }
        format.json { render :show, status: :created, location: @payuser }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payusers/1 or /payusers/1.json
  def update
    respond_to do |format|
      if @payuser.update(payuser_params)
        format.html { redirect_to payuser_url(@payuser), notice: "Payuser was successfully updated." }
        format.json { render :show, status: :ok, location: @payuser }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payusers/1 or /payusers/1.json
  def destroy
    @payuser.destroy

    respond_to do |format|
      format.html { redirect_to payusers_url, notice: "Payuser was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payuser
      @payuser = Payuser.find(params[:id])
    end
  
    # Only allow a list of trusted parameters through.
    def payuser_params
      params.require(:payuser).permit(:user_id)
    end
end
