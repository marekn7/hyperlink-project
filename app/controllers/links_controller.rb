class LinksController < ApplicationController
  def index
    @link = Link.all
  end

  def new
    @link = Link.new
  end

  def show
    @link = Link.find(params[:id])
  end

  def create
    @link = Link.new(link_params)

    if @link.save
      redirect_to links_path
    else
      render 'new'
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.new(link_params)

    if @link.save
      redirect_to links_path
    else
      render 'edit'
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy

    redirect_to links_path
  end

  private

  def link_params
    params.require(:link).permit(:name, :popularity, :description, :source)
  end
end
