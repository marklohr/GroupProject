class EmployerController < ApplicationController
  def index
    @employers = Employer.all
    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  def show
    set_employer
    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  def new
    @employer = Employer.new
    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  def create
    @employer = Employer.create employer_params
    redirect_to employer_path(@employer)
    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  def edit
    set_employer
    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  def update
    set_employer
    @employer.update_attributes employer_params
    redirect_to employer_path(@employer)
    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  def destroy
    set_employer
    @employer.destroy
    redirect_to employers_path
    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  private
  def set_employer
    @employer = Employer.find params[:id]
  end

  def employer_params
    params.require(:employer).permit(
      :name,
      :photo,
      :bio,
      :industry,
      :size,
      :date_founded,
      :email,
      )
  end
end
