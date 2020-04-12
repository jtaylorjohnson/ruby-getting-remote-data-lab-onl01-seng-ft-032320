
class GetRequester
  
  def initialize(url)
    URL = url
  end
  
  def get_respose_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    response = 
