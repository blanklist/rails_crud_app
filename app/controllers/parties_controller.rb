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
  end

  def show
    @party = Party.find(params[:id])
  end

  def update
  end

  def update
  end

  def destroy
  end

  private
    def party_params
      params.require(:party).permit(:name, :location, :date, :user_id)
    end

end