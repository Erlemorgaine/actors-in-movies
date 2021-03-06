class MoviesController < ApplicationController

  before_action :set_movie, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @movies = Movie.all
  end

  def show
    @actors = @movie.actors
  end

  def new
    @movie = current_user.movies.build
  end

  def create
    @movie = current_user.movies.build(movie_params)

    if @movie.save
      redirect_to @movie, notice: "#{@movie.created_by} created a movie!"
    else
      render :new
    end
  end

  def edit; end

  def update
    if @movie.update(movie_params)
      redirect_to @movie, notice: "Movie updated!"
    else
      render :edit
    end
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params
      .require(:movie)
      .permit(:name, :year, :image_url, :actor_ids [], :created_by)
  end

end
