class SalesDetailsController < ApplicationController
  before_action :set_sales_detail, only: [:show, :edit, :update, :destroy]

  # GET /sales_details
  # GET /sales_details.json
  def index
    @sales_details = SalesDetail.all
  end

  # GET /sales_details/1
  # GET /sales_details/1.json
  def show
  end

  # GET /sales_details/new
  def new
    @sales_detail = SalesDetail.new
    use_case = UseCase.find(params[:use_case_id])
    @sales_detail.use_case_no = use_case.use_case_no
  end

  # GET /sales_details/1/edit
  def edit
  end

  # POST /sales_details
  # POST /sales_details.json
  def create
    @sales_detail = SalesDetail.new(sales_detail_params)
    #@sales.use_cases << UseCase.where(use_case_no: params[:use_case_no])
    respond_to do |format|
      if @sales_detail.save
        format.html { redirect_to @sales_detail }
        format.json { render :show, status: :created, location: @sales_detail }
      else
        format.html { render :new }
        format.json { render json: @sales_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_details/1
  # PATCH/PUT /sales_details/1.json
  def update
    respond_to do |format|
      if @sales_detail.update(sales_detail_params)
        format.html { redirect_to @sales_detail }
        format.json { render :show, status: :ok, location: @sales_detail }
      else
        format.html { render :edit }
        format.json { render json: @sales_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_details/1
  # DELETE /sales_details/1.json
  def destroy
    @sales_detail.destroy
    respond_to do |format|
      format.html { redirect_to use_cases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_detail
      @sales_detail = SalesDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sales_detail_params
      params.require(:sales_detail).permit(:sd_no, :date, :product_name, :sales_amount, :customize_cost, :use_case_no)
    end
end
