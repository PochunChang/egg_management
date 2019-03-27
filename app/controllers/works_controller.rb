class WorksController < ApplicationController
  before_action :set_work, only: [:show, :edit, :update, :destroy]

  # GET /works
  # GET /works.json
  def index
    #@works = Work.all
    #search
    if params[:search]
      key = "%#{params[:search]}%"
      @works = Work.where( 'use_case_no LIKE :search OR work_no LIKE :search OR client_name LIKE :search', search: key).page(params[:page]).per(5)
    else
      @works = Work.all.page(params[:page]).per(5)
    end
  end

  # GET /works/1
  # GET /works/1.json
  def show
  end

  # GET /works/new
  def new
    @work = Work.new
    #assigning use_case to the work being created
    use_case = UseCase.find(params[:use_case_id])
    @work.use_case_no = use_case.use_case_no
    @work.client_name = use_case.client_name

  end

  # GET /works/1/edit
  def edit
  end

  # POST /works
  # POST /works.json
  def create
    @work = Work.new(work_params)
    @work.use_cases << UseCase.where(use_case_no: @work.use_case_no)
    respond_to do |format|
      if @work.save
        format.html { redirect_to @work }
        format.json { render :show, status: :created, location: @work }
      else
        format.html { render :new }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /works/1
  # PATCH/PUT /works/1.json
  def update
    respond_to do |format|
      if @work.update(work_params)
        format.html { redirect_to @work }
        format.json { render :show, status: :ok, location: @work }
      else
        format.html { render :edit }
        format.json { render json: @work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /works/1
  # DELETE /works/1.json
  def destroy
    @work.destroy
    respond_to do |format|
      format.html { redirect_to works_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work
      @work = Work.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_params
      params.require(:work).permit(:work_no, :use_case_no, :client_name, :classification, :worker_name, :kct, :subject, :content)
    end
end
