class GraduatesController < ApplicationController
  def index
    @graduates = Graduate.all.to_json
    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  def show
    set_graduate
    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  def create
    @graduate = Graduate.create graduate_params
    redirect_to graduate_path(@graduate)
    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  def update
    set_graduate
    @graduate.update_attributes graduate_params
    redirect_to graduate_path(@graduate)
    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  def destroy
    set_graduate
    @graduate.destroy
    redirect_to graduates_path
    respond_to do |format|
      format.json
      format.js
      format.html
    end
  end

  private
  def set_graduate
    @graduate = Graduate.find params[:id]
    @graduate = @graduate.to_json
  end

  def graduate_params
    params.require(:graduate).permit(
      :first_name,
      :last_name,
      :photo,
      :bio,
      :current_city,
      :current_state,
      :grad_city,
      :grad_state,
      :email,
      :grad_date
      )
  end
end
