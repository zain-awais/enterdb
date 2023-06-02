namespace :store_movie_genre do
    desc "Description of the task"
    task fetch_data: :environment do
        
        require_relative '../../app/services/api_service'

        response = APIService.get_data("/3/genre/movie/list")
        genre_data = response["genres"]


        genre_data.each do |genre|
            Genre.find_or_create_by(external_id: genre["id"]) do |g|
                g.name = genre["name"]
            end
        end

    end
end