electionId = '4224'
url = URI.parse("https://www.googleapis.com/civicinfo/v2/voterinfo?address=#{address}+#{city}+#{state}+#{zip}&electionId=#{electionId}&key=%20AIzaSyADg9cO6tVObFRbGvmPeAJcmrc13BbbqeQ")

req = Net::HTTP::Get.new(url.to_s)
http = Net::HTTP.new(url.host,url.port)
http.use_ssl = (url.scheme == "https")
response = http.request(req)
raw = JSON.parse("#{response.body}")

# Polling Locations:
name = raw['pollingLocations'][0]['address']['locationName']
street_address = raw['pollingLocations'][0]['address']['line1']
city = raw['pollingLocations'][0]['address']['city']
state = raw['pollingLocations'][0]['address']['state']
zip = raw['pollingLocations'][0]['address']['zip']
# ========
# Election day:
date = raw['election']['electionDay']
hours = raw['pollingLocations'][0]['pollingHours']
# ====
# registration
url = 'https://www.vote4dc.com/ApplyInstructions/Register'
