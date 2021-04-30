class OrganizersController < ApplicationController
  def index
    @organizers = Organizer.order(:email)
  end

  def new
    @organizer = Organizer.new
  end

  def show
    @organizer = Organizer.find(params[:id])
  end

  def create
    organizer = Organizer.new(organizer_params)
    redirect_to(organizer.save ? root_path : new_organizer_path)
  end

  private

  def organizer_params
    params.require(:organizer).permit(:email, :password)
  end

end
