class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard, :profile]

  def home
  end

  def search
  end

  def dashboard
    my_festivals = current_user.my_festivals.includes(:festival).where(participating: true)

    @upcoming_festivals = my_festivals.upcoming.map { |my_festival| my_festival.festival }
    @current_festivals = my_festivals.current.map { |my_festival| my_festival.festival }
    @past_festivals = my_festivals.past.map { |my_festival| my_festival.festival }
  end

  def profile
    @user = current_user
  end
end
