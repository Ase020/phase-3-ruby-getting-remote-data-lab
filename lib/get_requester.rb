require 'net/http'
require 'open-uri'
require 'json'
class GetRequester
  def initialize(url)
    @url = url
  end

  def get_response_body
    uri = URI.parse(@url)
    res = Net::HTTP.get_response(uri)
    res.body
  end

  def parse_json
    data = JSON.parse(get_response_body)
  end
end

class1 = GetRequester.new('https://data.cityofnewyork.us/resource/uvks-tn5n.json')

puts class1.parse_json
