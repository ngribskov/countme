class Election < ActiveRecord::Base
  def self.genElectionList
    #returns a list of all non-test elections currently available in the google civic api and their id numbers
    query = {
      :key => "AIzaSyADg9cO6tVObFRbGvmPeAJcmrc13BbbqeQ"
    }.to_query
    url = URI.parse("https://www.googleapis.com/civicinfo/v2/elections?" + query)
    req = Net::HTTP::Get.new(url.to_s)
    http = Net::HTTP.new(url.host,url.port)
    http.use_ssl = (url.scheme == "https")
    response = http.request(req)
    raw = response.body
    raw = JSON.parse(raw)
    election_list = []
    raw['elections'].each do |x|
      if x['name'].exclude?('Test')
        election_list.push([x['name'], x['id']])
      end
    end
    return election_list
  end
end
