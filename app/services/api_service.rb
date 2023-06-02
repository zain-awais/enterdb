require 'httparty'

class APIService
  include HTTParty

  @api_key = "3ba4a669ce311af414dd9403972fcab3" 

#   @base_uri = "https://api.themoviedb.org#{@slug}?api_key=#{@api_key}"

  def self.get_data(slug)
    
    response = HTTParty.get("https://api.themoviedb.org#{slug}?api_key=#{@api_key}")

    if response.success?
      return response.parsed_response
    else
      raise "API request failed: #{response.code} - #{response.message}"
    end
  end
end
