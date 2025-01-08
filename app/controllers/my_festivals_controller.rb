class MyFestivalsController < ApplicationController
  before_action :authenticate_user!

  def update
    my_festival = MyFestival.find_or_initialize_by(user_id: current_user.id, festival_id: params[:id])

    my_festival.participating = !my_festival.participating

    if my_festival.save
      redirect_to request.referer, notice: my_festival.participating ? "Vous participez à ce festival !" : "Participation annulée."
    else
      redirect_to request.referer, alert: "Erreur lors de la mise à jour de la participation."
    end
  end
end
