namespace :store_api_response_in_movies do
    desc "Description of the task"
    task fetch_data: :environment do
        
        require_relative '../../app/services/api_service'

        
        data = APIService.get_data("/3/movie/now_playing")
        response = data["results"]


        # for i in 0..data["total_pages"]
        #     Movie.find_or_create_by(title: ) do |movie|

        #     end
        # end

    end
end