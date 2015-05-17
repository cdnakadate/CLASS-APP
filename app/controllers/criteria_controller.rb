class CriteriaController < ApplicationController

  before_action :set_criterium, only: [:show, :edit, :update, :destroy]

  # GET /criteria
  # GET /criteria.json
  def index
    @criteria = Criterium.all
  end

  # GET /criteria/1
  # GET /criteria/1.json
  def show
  end

  # GET /criteria/new
  def new
    @criterium = Criterium.new
  end

  # GET /criteria/1/edit
  def edit
  end

  # POST /criteria
  # POST /criteria.json
  def create
    @criterium = Criterium.new(criterium_params)

    respond_to do |format|
      if @criterium.save
        format.html { redirect_to @criterium, notice: 'Criterium was successfully created.' }
        format.json { render :show, status: :created, location: @criterium }
      else
        format.html { render :new }
        format.json { render json: @criterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /criteria/1
  # PATCH/PUT /criteria/1.json
  def update
    respond_to do |format|
      if @criterium.update(criterium_params)
        format.html { redirect_to @criterium, notice: 'Criterium was successfully updated.' }
        format.json { render :show, status: :ok, location: @criterium }
      else
        format.html { render :edit }
        format.json { render json: @criterium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /criteria/1
  # DELETE /criteria/1.json
  def destroy
    @criterium.destroy
    respond_to do |format|
      format.html { redirect_to criteria_url, notice: 'Criterium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_criterium
      @criterium = Criterium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def criterium_params
      params.require(:criterium).permit(:school_name, :evaluator_name, :evaluated_name, :subject, :sudent_id, :employee_id, :eval_id, :vanguard, :class_period, :grade, :student_employee, :notes, :pl1, :pl2, :pl3, :pr1, :pr2, :pr3, :pr4, :pr5, :pr6, :pr7, :pr8, :pr9, :i1, :i2, :i3, :i4, :i5, :i6, :i7, :i8, :i9, :i10, :file_upload)
    end
end
