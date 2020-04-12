require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  URL = ""
  
  def initialize(url)
    URL = url
  end
  
  def get_respose_body
    uri = URI.parse(URL)
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
