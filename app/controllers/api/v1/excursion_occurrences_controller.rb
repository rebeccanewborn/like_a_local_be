class Api::V1::ExcursionOccurrencesController < ApplicationController
  def create
    @exocc = ExcursionOccurrence.new(excursion_occurrence_params)
    if @exocc.valid?
      @exocc.save
      @excursion = Excursion.find(params[:excursion_id])
      render json: @excursion
    else
      render json: {error: @exocc.errors}, status: 400
    end
  end

  def destroy
    @exocc = ExcursionOccurrence.find(params[:id])
    @excursion = @exocc.excursion
    @exocc.destroy
    render json: @excursion
  end

  private
  def excursion_occurrence_params
    params.require(:excursion_occurrence).permit(:time, :excursion_id)
  end
end
