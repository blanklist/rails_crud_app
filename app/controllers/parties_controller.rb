class PartiesController < ApplicationController
  def index
    @parties = Party.all
  end

  def create
    @party = Party.new(party_params)
    if @party.save
      redirect_to parties_path
    else
      render 'new'
    end
  end

  def new
    @party = Party.new
  end

  def edit
    @party = Party.find(params[:id])
  end

  def show
    @party = Party.find(params[:id])
  end

  def update
    @party = Party.find(params[:id])
    @party.update(party_params)
    redirect_to party_path
  end

  def destroy
  end

  private
    def party_params
      params.require(:party).permit(:name, :location, :date, :user_id)
    end

end