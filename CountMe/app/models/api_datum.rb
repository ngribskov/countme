class ApiDatum < ActiveRecord::Base
  has_one :voter, foreign_key: "api_id"

  def self.parse(address,city,state,zip,election_id)
    query = {
      :address => address + city + state + zip,
      :electionId => election_id,
      :key => "AIzaSyADg9cO6tVObFRbGvmPeAJcmrc13BbbqeQ"
    }.to_query
    url = URI.parse("https://www.googleapis.com/civicinfo/v2/voterinfo?" + query)

    req = Net::HTTP::Get.new(url.to_s)
    http = Net::HTTP.new(url.host,url.port)
    http.use_ssl = (url.scheme == "https")
    response = http.request(req)
    raw = response.body
    JSON.parse(raw)
  end

  def self.candidates(address,city,state,zip,election_id)
    query = {
      :address => address + city + state + zip,
      :electionId => election_id,
      :key => "AIzaSyADg9cO6tVObFRbGvmPeAJcmrc13BbbqeQ"
    }.to_query
    url = URI.parse("https://www.googleapis.com/civicinfo/v2/voterinfo?" + query)

    req = Net::HTTP::Get.new(url.to_s)
    http = Net::HTTP.new(url.host,url.port)
    http.use_ssl = (url.scheme == "https")
    response = http.request(req)
    raw = response.body
    contests = JSON.parse(raw)['contests']
    return contests
  end

  def self.state_name(state)
    states = {"AK": "Alaska",
                "AL": "Alabama",
                "AR": "Arkansas",
                "AS": "American Samoa",
                "AZ": "Arizona",
                "CA": "California",
                "CO": "Colorado",
                "CT": "Connecticut",
                "DC": "District of Columbia",
                "DE": "Delaware",
                "FL": "Florida",
                "GA": "Georgia",
                "GU": "Guam",
                "HI": "Hawaii",
                "IA": "Iowa",
                "ID": "Idaho",
                "IL": "Illinois",
                "IN": "Indiana",
                "KS": "Kansas",
                "KY": "Kentucky",
                "LA": "Louisiana",
                "MA": "Massachusetts",
                "MD": "Maryland",
                "ME": "Maine",
                "MI": "Michigan",
                "MN": "Minnesota",
                "MO": "Missouri",
                "MS": "Mississippi",
                "MT": "Montana",
                "NC": "North Carolina",
                "ND": "North Dakota",
                "NE": "Nebraska",
                "NH": "New Hampshire",
                "NJ": "New Jersey",
                "NM": "New Mexico",
                "NV": "Nevada",
                "NY": "New York",
                "OH": "Ohio",
                "OK": "Oklahoma",
                "OR": "Oregon",
                "PA": "Pennsylvania",
                "PR": "Puerto Rico",
                "RI": "Rhode Island",
                "SC": "South Carolina",
                "SD": "South Dakota",
                "TN": "Tennessee",
                "TX": "Texas",
                "UT": "Utah",
                "VA": "Virginia",
                "VI": "Virgin Islands",
                "VT": "Vermont",
                "WA": "Washington",
                "WI": "Wisconsin",
                "WV": "West Virginia",
                "WY": "Wyoming"}
            states[state.parameterize.to_sym.upcase]

  end

end
