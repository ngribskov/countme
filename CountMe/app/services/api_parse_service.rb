class ApiParse
  attr_accessor :address, :city, :state, :zip
  def initialize(address,city,state,zip)
    @address = address
    @city = city
    @state = state
    @zip = zip
  end

  def parse(voter)
    electionId = '4224'
    query = {
      :address => @address + @city + @state + @zip,
      :electionId => electionId,
      :key => "AIzaSyADg9cO6tVObFRbGvmPeAJcmrc13BbbqeQ"
    }.to_query
    url = URI.parse("https://www.googleapis.com/civicinfo/v2/voterinfo?" + query)

    req = Net::HTTP::Get.new(url.to_s)
    http = Net::HTTP.new(url.host,url.port)
    http.use_ssl = (url.scheme == "https")
    response = http.request(req)
    raw = response.body
    raw = JSON.parse(raw)

    j = ApiDatum.new
    j.l_name = raw['pollingLocations'][0]['address']['locationName']
    j.l_address= raw['pollingLocations'][0]['address']['line1']
    j.l_city = raw['pollingLocations'][0]['address']['city']
    j.l_state = raw['pollingLocations'][0]['address']['state']
    j.l_zip = raw['pollingLocations'][0]['address']['zip']
    j.l_date = raw['election']['electionDay']
    j.l_hours = raw['pollingLocations'][0]['pollingHours']
    j.l_url = 'https://www.ok.gov/elections/Voter_Info/Register_to_Vote/'
    j.voter = voter
    j.save!
  end
end
