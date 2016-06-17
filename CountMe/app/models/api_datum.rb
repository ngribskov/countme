class ApiDatum < ActiveRecord::Base
  def self.parse(address, city,state,zip)
    electionId = '4224'
    url = URI.parse("https://www.googleapis.com/civicinfo/v2/voterinfo?address=#{address}+#{city}+#{state}+#{zip}&electionId=#{electionId}&key=%20AIzaSyADg9cO6tVObFRbGvmPeAJcmrc13BbbqeQ")

    req = Net::HTTP::Get.new(url.to_s)
    http = Net::HTTP.new(url.host,url.port)
    http.use_ssl = (url.scheme == "https")
    response = http.request(req)
    raw = response.body
    JSON.parse(raw)
  end

end
