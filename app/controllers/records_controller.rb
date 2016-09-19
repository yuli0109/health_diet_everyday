class RecordsController < ApplicationController
  def index
    if current_user
      @records = Record.where(user_id: current_user).order(date_create: :desc)
    else
      redirect_to new_session_path
    end
  end

  def show
    @record = Record.find(params[:id])
    @foods = @record.foods
  end
end
