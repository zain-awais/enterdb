require_relative '../../app/services/api_service'

class MoviesController < ApplicationController
  def index
    #fetched data from API and store in movies model.
    @movies = Movie.includes(:genres)
    @genres = Genre.all
  end

  def now_playing
    response = APIService.get_data("/3/movie/now_playing")
    @now_play = response["results"]
  end

  def top_rated
    response = APIService.get_data("/3/movie/top_rated")
    @top_rated = response["results"]
  end

  def popular
    response = APIService.get_data("/3/movie/popular")
    @popular = response["results"]
  end

  def search
    if params[:query]
      @search_result = Movie.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @search_result = Movie.all
    end
    # response = APIService.get_data("/3/search/keyword?query=#{param["query"]}")
    # @search_result = response["results"]
  end

  def genre
    @result = Genre.find_by(name: params[:keyword]).movies
  end
end
