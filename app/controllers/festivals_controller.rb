class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
  end
end
