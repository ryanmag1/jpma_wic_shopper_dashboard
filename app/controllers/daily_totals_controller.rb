class DailyTotalsController < ApplicationController
  before_action :set_daily_total, only: [:show, :edit, :update, :destroy]

  # GET /daily_totals
  # GET /daily_totals.json
  def index
    @daily_totals = DailyTotal.all
  end

  # GET /daily_totals/1
  # GET /daily_totals/1.json
  def show
  end

  # GET /daily_totals/new
  def new
    @daily_total = DailyTotal.new
  end

  # GET /daily_totals/1/edit
  def edit
  end

  # POST /daily_totals
  # POST /daily_totals.json
  def create
    @daily_total = DailyTotal.new(daily_total_params)

    respond_to do |format|
      if @daily_total.save
        format.html { redirect_to @daily_total, notice: 'Daily total was successfully created.' }
        format.json { render :show, status: :created, location: @daily_total }
      else
        format.html { render :new }
        format.json { render json: @daily_total.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_totals/1
  # PATCH/PUT /daily_totals/1.json
  def update
    respond_to do |format|
      if @daily_total.update(daily_total_params)
        format.html { redirect_to @daily_total, notice: 'Daily total was successfully updated.' }
        format.json { render :show, status: :ok, location: @daily_total }
      else
        format.html { render :edit }
        format.json { render json: @daily_total.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_totals/1
  # DELETE /daily_totals/1.json
  def destroy
    @daily_total.destroy
    respond_to do |format|
      format.html { redirect_to daily_totals_url, notice: 'Daily total was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_total
      @daily_total = DailyTotal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_total_params
      params.require(:daily_total).permit(:date, :new_card_regs, :daily_rx_users, :device_registrations, :device_activity, :peoplescanning, :items_scanned)
    end
end
