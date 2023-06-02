namespace :store_api_response_in_movies do
    desc "Description of the task"
    task fetch_data: :environment do
        
        require_relative '../../app/services/api_service'

        
        data = APIService.get_data("/3/movie/now_playing")
        movie_data = data["results"]
        movie_data.each do |movie|
            movie_record = Movie.find_or_create_by(external_id: movie["id"]) do |m|
              # Assign other attributes of the movie record here
              m.backdrop_path = movie['backdrop_path'],
              m.external_id = movie['id'],
              m.original_language = movie['original_language'],
              m.original_title = movie['original_title'],
              m.overview = movie['overview'],
              m.popularity = movie['popularity'],
              m.poster_path = movie['poster_path'],
              m.release_date = movie['release_date'],
              m.title = movie['title'],
              m.video = movie['video'],
              m.vote_average = movie['vote_average'],
              m.vote_count = movie['vote_count']
            end
            movie["genre_ids"].each do |genre_id|
                # Find the genre record by ID
                genre = Genre.find_by(external_id: genre_id)
          
                # Create the movie_genre entry
                MovieGenre.find_or_create_by(movie_id: movie_record.id, genre_id: genre.id)
            end
        end
    end
end