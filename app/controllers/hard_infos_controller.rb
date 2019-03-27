class HardInfosController < ApplicationController
  before_action :set_hard_info, only: [:show, :edit, :update, :destroy]

  # GET /hard_infos
  # GET /hard_infos.json
  def index
    @hard_infos = HardInfo.all
  end

  # GET /hard_infos/1
  # GET /hard_infos/1.json
  def show
    #uc = UseCase.find(id: @hard_info.use_case_id)
    #@hi = @hard_info.uc

  end

  # GET /hard_infos/new
  def new
    @hard_info = HardInfo.new
    #@hard_info.use_case_id = params[:use_case_id]
    #@uc = UseCase.find(params[:use_case_id])

  end

  # GET /hard_infos/1/edit
  def edit
  end

  # POST /hard_infos
  # POST /hard_infos.json
  def create
    @hard_info = HardInfo.new(hard_info_params)
    #@hard_info.use_cases << UseCase.where(use_case_no: params[:use_case_no])
    respond_to do |format|
      if @hard_info.save
        format.html { redirect_to @hard_info }
        format.json { render :show, status: :created, location: @hard_info }
      else
        format.html { render :new }
        format.json { render json: @hard_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hard_infos/1
  # PATCH/PUT /hard_infos/1.json
  def update
    respond_to do |format|
      if @hard_info.update(hard_info_params)
        format.html { redirect_to @hard_info }
        format.json { render :show, status: :ok, location: @hard_info }
      else
        format.html { render :edit }
        format.json { render json: @hard_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hard_infos/1
  # DELETE /hard_infos/1.json
  def destroy
    @hard_info.destroy
    respond_to do |format|
      format.html { redirect_to use_cases_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hard_info
      @hard_info = HardInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hard_info_params
      params.require(:hard_info).permit(
        :denban,
        :store_name,
        :worker_name,
        :address1,
        :address2,
        :address3,
        :tel,
        :fax,
        :connection_current,
        :connection_max,
        :remark,
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
        :remote,
        :supervision_count,
        :hoshu,
        :person_in_charge,
        :company_tel,
        :sales_no,
        :lookup_no,
        :so_name,
        :so_address1,
        :so_address2,
        :so_address3,
        :so_pic,
        :so_tel,
        :so_fax,
        :c_email,
        :use_case_no,
        :client_name,
        :product_name,
        :mod,
        :use_case_identification,
        :tel
        )
    end
end
