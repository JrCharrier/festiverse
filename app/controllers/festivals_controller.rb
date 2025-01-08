class FestivalsController < ApplicationController
  def index
    if params[:genres].present?
      @genre = params[:genres].upcase
      @festivals = Festival.where("'#{@genre}' = ANY (genres)")
    elsif params[:query].present?
      @festivals = Festival.search_by_name_genre_start_date_line_up_and_address(params[:query])
    else
      @festivals = Festival.all
    end
  end

  def show
    @festival = Festival.find(params[:id])
  end

  def category
    @genre = params[:genre].downcase
    @festivals = Festival.where("? = ANY (genres)", @genre)

    render :index
  end
end
