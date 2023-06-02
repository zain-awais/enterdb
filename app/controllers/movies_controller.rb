require_relative '../../app/services/api_service'

class MoviesController < ApplicationController
  def index
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
end
