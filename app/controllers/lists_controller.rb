class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @lists = List.find(params[:movies_id])
  end

  def new
    @lists = List.new
  end

  def create
    @lists = List.new(list_params)
    if @lists.save
    redirect_to lists_path(@list)
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
