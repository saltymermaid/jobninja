class EmployersController < ApplicationController
  before_action :set_employer, only: %i[show edit update destroy]
  def index
    @employers = Employer.all
  end

  def show
  end

  def new
    @employer = Employer.new
  end

  def create
    @employer = Employer.new(employer_params)

    if @employer.save
      redirect_to @employer, notice: "Employer was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @employer.update(employer_params)
      redirect_to @employer, notice: "Employer was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @employer.destroy
    redirect_to employers_url, notice: "Employer was successfully destroyed."
  end

  private

  def set_employer
    @employer = Employer.find(params[:id])
  end

  def employer_params
    params.require(:employer).permit(:name, :url, :jobs_url)
  end
end
