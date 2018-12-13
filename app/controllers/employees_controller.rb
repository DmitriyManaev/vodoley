class EmployeesController < ApplicationController
  respond_to :html

  def index
    @employees = Employee.all

    respond_to do |format|
      format.html { render :index, status: :ok }
      format.json { render json: { employees: @employees }, status: :ok }
    end
  end

  def show
    @employee = Employee.find_by(slug: params[:slug])

    respond_to do |format|
      format.html { render :show, status: :ok }
      format.json { render json: { employee: @employee }, status: :ok }
    end
  end
end
