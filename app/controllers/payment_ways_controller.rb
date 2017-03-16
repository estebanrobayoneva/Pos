class PaymentWaysController < ApplicationController
  before_action :set_payment_way, only: [:show, :edit, :update, :destroy]

  # GET /payment_ways
  # GET /payment_ways.json
  def index
    @payment_ways = PaymentWay.all
  end

  # GET /payment_ways/1
  # GET /payment_ways/1.json
  def show
  end

  # GET /payment_ways/new
  def new
    @payment_way = PaymentWay.new
  end

  # GET /payment_ways/1/edit
  def edit
  end

  # POST /payment_ways
  # POST /payment_ways.json
  def create
    @payment_way = PaymentWay.new(payment_way_params)

    respond_to do |format|
      if @payment_way.save
        format.html { redirect_to @payment_way, notice: 'Payment way was successfully created.' }
        format.json { render :show, status: :created, location: @payment_way }
      else
        format.html { render :new }
        format.json { render json: @payment_way.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_ways/1
  # PATCH/PUT /payment_ways/1.json
  def update
    respond_to do |format|
      if @payment_way.update(payment_way_params)
        format.html { redirect_to @payment_way, notice: 'Payment way was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_way }
      else
        format.html { render :edit }
        format.json { render json: @payment_way.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_ways/1
  # DELETE /payment_ways/1.json
  def destroy
    @payment_way.destroy
    respond_to do |format|
      format.html { redirect_to payment_ways_url, notice: 'Payment way was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_way
      @payment_way = PaymentWay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_way_params
      params.require(:payment_way).permit(:nombre)
    end
end
