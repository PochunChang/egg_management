class UseCasesController < ApplicationController
  before_action :set_use_case, only: [:show, :edit, :update, :destroy]

  # GET /use_cases
  # GET /use_cases.json
  def index
    #using kaminari for pagination
    #@use_cases = UseCase.order(:id).page(params[:page]).per(5)

    #search
    if params[:search]
      key = "%#{params[:search]}%"
      @use_cases = UseCase.where( 'use_case_no LIKE :search OR client_name LIKE :search', search: key).page(params[:page]).per(5)
    else
      @use_cases = UseCase.all.page(params[:page]).per(5)
    end

    #dataTable stuffs, unused.
    respond_to do |format|
    format.html
    format.json { render json: UseCaseDatatable.new(params) }
    end
  end

  # GET /use_cases/1
  # GET /use_cases/1.json
  def show
    @use_case.works << Work.where(use_case_no: @use_case.use_case_no)
    @use_case.hard_infos << HardInfo.where(use_case_no: @use_case.use_case_no)
    @use_case.sales_details << SalesDetail.where(use_case_no: @use_case.use_case_no)
    #calculate id issued / sc count
    @use_case.id_issued = 0
    @use_case.sc_count = 0
    @use_case.hard_infos.each do |hi|
      if hi.id_issued == nil
        hi.id_issued = 0
      end
      if hi.sc_count == nil
        hi.sc_count = 0
      end
      @use_case.id_issued = @use_case.id_issued + hi.id_issued
      @use_case.sc_count = @use_case.sc_count + hi.sc_count
    end

  end

  # GET /use_cases/new
  def new
    @use_case = UseCase.new
    @use_case_ledgers = UseCaseLedger.all
  end

  # GET /use_cases/1/edit
  def edit
    @use_case_ledgers = UseCaseLedger.all
  end

  # POST /use_cases
  # POST /use_cases.json
  def create
    @use_case = UseCase.new(use_case_params)
    # creating hard info
    @use_case.hard_infos.new(use_case_params.except(
          :division,
          :sc_tel,
          :project_no,
          :industry,
          :service_product,
          :customer_count,
          :vendor_count,
          :product_count,
          :vehicle_count,
          :driver_count,
          :sc_name,
          :memo,
          :use_case_code
          )
        )
    @use_case.hard_infos.last.save
    #--
    respond_to do |format|
      if @use_case.save
        format.html { redirect_to @use_case }
        format.json { render :show, status: :created, location: @use_case }
      else
        format.html { render :new }
        format.json { render json: @use_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /use_cases/1
  # PATCH/PUT /use_cases/1.json
  def update
    # updating hard info
    hard_info = HardInfo.where(use_case_no: @use_case.use_case_no, client_name: @use_case.client_name, product_name: @use_case.product_name)
    hard_info.first.update(use_case_params.except(
      :division,
      :sc_tel,
      :project_no,
      :industry,
      :service_product,
      :customer_count,
      :vendor_count,
      :product_count,
      :vehicle_count,
      :driver_count,
      :sc_name,
      :memo,
      :use_case_code
      )
    )
    #--
    respond_to do |format|
      if @use_case.update(use_case_params)
        format.html { redirect_to @use_case }
        format.json { render :show, status: :ok, location: @use_case }
      else
        format.html { render :edit }
        format.json { render json: @use_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /use_cases/1
  # DELETE /use_cases/1.json
  def destroy
    HardInfo.where(c_office: @use_case.c_office, use_case_no: @use_case.use_case_no, product_name: @use_case.product_name).destroy_all
    @use_case.destroy
    respond_to do |format|
      format.html { redirect_to use_cases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_use_case
      @use_case = UseCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def use_case_params
      params.require(:use_case).permit(
        :division,
        :use_case_no,
        :date,
        :client_name,
        :product_name,
        :mod,
        :province,
        :store,
        :memo,
        :introduction_date,
        :time_passed,
        :due_date,
        :time_remaining,
        :sales_person,
        :delivery_person,
        :superviser,
        :project_person,
        :program_person,
        :id_issued,
        :sc_count,
        :tel,
        :remote,
        :supervision_count,
        :hoshu,
        :c_pic,
        :so_address1,
        :so_address2,
        :so_address3,
        :so_pic,
        :sc_tel,
        :sales_no,
        :lookup_no,
        :project_no,
        :industry,
        :service_product,
        :customer_count,
        :vendor_count,
        :product_count,
        :vehicle_count,
        :driver_count,
        :sc_name,
        :so_tel,
        :so_fax,
        :so_name,
        :remark,
        :c_address1,
        :c_address2,
        :c_address3,
        :c_email,
        :c_postal_code,
        :c_tel,
        :c_fax,
        :c_office,
        :denban,
        :use_case_code
        
        )
    end
end
