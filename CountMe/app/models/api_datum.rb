class ApiDatum < ActiveRecord::Base
  has_one :voter, foreign_key: "api_id"

  def self.parse(address,city,state,zip)
    electionId = '4224'
    query = {
      :address => address + city + state + zip,
      :electionId => electionId,
      :key => "AIzaSyADg9cO6tVObFRbGvmPeAJcmrc13BbbqeQ"
    }.to_query
    url = URI.parse("https://www.googleapis.com/civicinfo/v2/voterinfo?" + query)

    req = Net::HTTP::Get.new(url.to_s)
    http = Net::HTTP.new(url.host,url.port)
    http.use_ssl = (url.scheme == "https")
    response = http.request(req)
    raw = response.body
    binding.pry
    JSON.parse(raw)
  end

end
