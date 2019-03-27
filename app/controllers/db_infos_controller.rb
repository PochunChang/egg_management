class DbInfosController < ApplicationController
  before_action :set_db_info, only: [:show, :edit, :update, :destroy]

  # GET /db_infos
  # GET /db_infos.json
  def index
    @db_infos = DbInfo.all
  end

  # GET /db_infos/1
  # GET /db_infos/1.json
  def show
  end

  # GET /db_infos/new
  def new
    @db_info = DbInfo.new
    @db_info.hard_info_id = params[:hard_info_id]
  end

  # GET /db_infos/1/edit
  def edit
  end

  # POST /db_infos
  # POST /db_infos.json
  def create
    @db_info = DbInfo.new(db_info_params)

    respond_to do |format|
      if @db_info.save
        format.html { redirect_to @db_info}
        format.json { render :show, status: :created, location: @db_info }
      else
        format.html { render :new }
        format.json { render json: @db_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /db_infos/1
  # PATCH/PUT /db_infos/1.json
  def update
    respond_to do |format|
      if @db_info.update(db_info_params)
        format.html { redirect_to @db_info}
        format.json { render :show, status: :ok, location: @db_info }
      else
        format.html { render :edit }
        format.json { render json: @db_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_infos/1
  # DELETE /db_infos/1.json
  def destroy
    @db_info.destroy
    respond_to do |format|
      format.html { redirect_to use_cases_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_db_info
      @db_info = DbInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def db_info_params
      params.require(:db_info).permit(:db_info_no, :serial_no, :identification, :ip, :db_name, :name, :self, :printer, :backup, :os, :hard_info_id)
    end
end
