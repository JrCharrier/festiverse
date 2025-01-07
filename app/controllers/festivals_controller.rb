class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
    if params[:query].present?
      @festivals = Festival.search_by_name_genre_start_date_line_up_and_address(params[:query])
    else
      @festivals = Festival.all
    end
  end

  def show
    @festival = Festival.find(params[:id])
  end
end
