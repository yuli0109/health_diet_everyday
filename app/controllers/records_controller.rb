class RecordsController < ApplicationController
  def index
    if current_user
      @records = Record.where(user_id: current_user).order(date_create: :desc)
    else
      redirect_to new_session_path
    end
  end

  def show
    @foods = Food.all
    @json_foods = Food.all.to_json
    @record = Record.find(params[:id])
    @portions = @record.portions
    @foods_cates = Food.all.select(:category).distinct.order(category: :asc)
  end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    @record.user = current_user
    if @record.save
      redirect_to records_path
    else
      redirect_to records_path
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to records_path, alter: "Removed record on #{@record.date_create}"
  end

  private
    def record_params
      params.permit(:date_create)
    end
end
