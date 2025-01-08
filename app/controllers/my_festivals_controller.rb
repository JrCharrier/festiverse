class MyFestivalsController < ApplicationController
  before_action :authenticate_user!

  def update
    my_festival = MyFestival.find_or_initialize_by(user_id: current_user.id, festival_id: params[:id])

    if params[:favorite]
      my_festival.favorite = !my_festival.favorite
    else
      my_festival.participating = !my_festival.participating
    end

    if my_festival.save
      notice = if params[:favorite]
                 my_festival.favorite ? "Festival ajouté aux favoris." : "Festival retiré des favoris."
               else
                 my_festival.participating ? "Vous participez à ce festival !" : "Participation annulée."
               end
      redirect_to request.referer, notice: notice
    else
      redirect_to request.referer, alert: "Erreur lors de la mise à jour."
    end
  end
end
