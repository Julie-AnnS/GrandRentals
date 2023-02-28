class GrandparentsController < ApplicationController

  def index
    @grandparents = Grandparent.all
  end

  def show
    @grandparent = Grandparent.find(params[:id])
  end

  def new
    @grandparent = Grandparent.new
  end

  def create
    @grandparent = Grandparent.new(grandparent_params)
    if @grandparent.save
      redirect_to grandparent_path(@grandparent)
    else
    end
  end

  def destroy
  end
end
