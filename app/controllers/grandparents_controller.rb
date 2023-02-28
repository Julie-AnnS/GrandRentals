class GrandparentsController < ApplicationController
  before_action :grandparent, only: [:show, :edit, :update, :destroy]

  def index
    @grandparents = Grandparent.all
  end

  def show
  end

  def new
    @grandparent = Grandparent.new
  end

  def create
    @grandparent = Grandparent.new(grandparent_params)
    if @grandparent.save
      redirect_to grandparent_path(@grandparent)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  # end

  # def update
  #   grandparent.update(grandparent_params)
  #   redirect_to grandparent_path(@grandparent)
  # end

  def destroy
    @grandparent = Grandparent.find(params[:id])
    @grandparent.destroy
    redirect_to grandparents_path, status: :see_other
  end

  private

  def grandparent_params
    params.require(:grandparent).permit(:first_name, :last_name, :age, :abilities, :contradictions, :language, :available)
  end

  def grandparent
    @grandparent = Grandparent.find(params[:id])
  end
end
