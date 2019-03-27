class UseCaseLedgersController < ApplicationController
  before_action :set_use_case_ledger, only: [:show, :edit, :update, :destroy]

  # GET /use_case_ledgers
  # GET /use_case_ledgers.json
  def index
    @use_case_ledgers = UseCaseLedger.all
  end

  # GET /use_case_ledgers/1
  # GET /use_case_ledgers/1.json
  def show
  end

  # GET /use_case_ledgers/new
  def new
    @use_case_ledger = UseCaseLedger.new
  end

  # GET /use_case_ledgers/1/edit
  def edit
  end

  # POST /use_case_ledgers
  # POST /use_case_ledgers.json
  def create
    @use_case_ledger = UseCaseLedger.new(use_case_ledger_params)

    respond_to do |format|
      if @use_case_ledger.save
        format.html { redirect_to @use_case_ledger, notice: 'Use case ledger was successfully created.' }
        format.json { render :show, status: :created, location: @use_case_ledger }
      else
        format.html { render :new }
        format.json { render json: @use_case_ledger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /use_case_ledgers/1
  # PATCH/PUT /use_case_ledgers/1.json
  def update
    respond_to do |format|
      if @use_case_ledger.update(use_case_ledger_params)
        format.html { redirect_to @use_case_ledger, notice: 'Use case ledger was successfully updated.' }
        format.json { render :show, status: :ok, location: @use_case_ledger }
      else
        format.html { render :edit }
        format.json { render json: @use_case_ledger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /use_case_ledgers/1
  # DELETE /use_case_ledgers/1.json
  def destroy
    @use_case_ledger.destroy
    respond_to do |format|
      format.html { redirect_to use_case_ledgers_url, notice: 'Use case ledger was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_use_case_ledger
      @use_case_ledger = UseCaseLedger.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def use_case_ledger_params
      params.require(:use_case_ledger).permit(:use_case_code, :c_name, :c_furigana, :c_official_name, :c_pic, :c_rep, :c_rep_role, :c_rep_first_name, :c_rep_last_name, :c_office, :c_postal_code, :c_address1, :c_address2, :c_address3, :c_tel, :c_fax, :c_homepage, :c_email, :use_case_id, :hard_info_id)
    end
end
