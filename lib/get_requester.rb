require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

  
  def initialize(url)
    @url = url
  end
  
  def get_respose_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    items = JSON.parse(self.get_response_body)
    items.collect do |item|
      item["thing"]  
    end
  end
  
end
