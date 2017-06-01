class ArtistsController < ApplicationController

	before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
  	binding.pry
  	@artists = Artist.all
  end

  def show
  	@artist = Artist.find(params[:id])
  end

  def new
  	@artist = Artist.find(params[:id])
  end

  def create
  	@artist = Artist.new(artist_params)
  	if @artist.save?
  		redirect_to artists_path
  	else
  		render :new
  	end
  end

  def edit
  	@artist = Artist.find(params[:id])
  end

  def update
	@artist = Artist.find(params[:id])
  	if @artist.save?
  		redirect_to artists_path
  	else
  		render :new
  	end
  end

  def destroy
  	if @artist.destroy?
  		redirect_to artists_path
  	else
  		redirect_to artists_path
  end

  private

  def set_artist
  	@artist = Artist.find(params[:id])
  end
end

















