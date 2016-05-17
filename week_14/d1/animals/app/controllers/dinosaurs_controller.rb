class DinosaursController < ApplicationController
  def index
    @dinosaurs = [{name: 'T-Rex', name: 'Brachiosaurus', name: 'VelociRaptor'}]
    respond_to do |format|
      format.html
      format.json{ render :json => @dinosaurs }
    end
  end
end
