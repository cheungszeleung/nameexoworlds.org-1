class ClubsController < ApplicationController
  # before_action :authenticate_club!, except: [:show]

  def current
    respond_to do |format|
      format.json {render :json => (current_club || Club.first).to_json}
    end
  end

  def show
    @club = Club.find(params[:id])
    @club = Club.first
    # if @club !=current_club
      # redirect_to '/'
    # end
  end
end
