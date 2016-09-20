class PortionsController < ApplicationController
  def new
    @portion = Portion.new
  end

  def create
    @portion = Portion.new(portion_params)
    @portion.record_id = params[:record_id]
    if @portion.save
      redirect_to record_path(params[:record_id])
    else
      render 'new'
    end
  end


  private
    def portion_params
      params.permit(:weight,:food_id)
    end
end
