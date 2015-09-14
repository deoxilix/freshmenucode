require 'pry'
class FreshmenuController < ApplicationController

  def index
  	@freshmenu = Freshmenu.all
  end

  def show
  	@freshmenu = Freshmenu.find(params[:id])
  end

  def new
  	@freshmenu = Freshmenu.new
  end

  def edit
  	@freshmenu = Freshmenu.find(params[:id])
  end

  def create
  	@freshmenu = Freshmenu.new(freshmenu_params)
  	if @freshmenu.save
  		redirect_to @freshmenu
  	else
  		render 'new'
  	end
  end

  def update
  	@freshmenu = Freshmenu.find(params[:id])
  	if @freshmenu.update(freshmenu_params)
  		redirect_to @freshmenu
  	else
  		render 'edit'
  	end
  end

  private
  def freshmenu_params
  	params.require(:freshmenu).permit(:cuisine, :orientate)
  end

end
