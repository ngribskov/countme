require 'csv'
class VotersController < ApplicationController


  def index

    @voters = Voter.all

  end
  before_action :authenticate_user!

  def create

    # this section updates the voter information after filling in the form
    voter_hash = params.delete('voter')
    i = Voter.new
    i.name_f = voter_hash['name_f']
    i.name_l = voter_hash['name_l']
    i.address = voter_hash['address']
    i.city = voter_hash['city']
    i.state = voter_hash['state']
    i.zip = voter_hash['zip']
    i.user = current_user
    i.election = params['election_id']
    i.save!

    # this section inputs data into the api_data model while collecting data from the user.
    raw = ApiDatum.parse(i.address,i.city,i.state,i.zip,i.election)

    j = ApiDatum.new
    j.l_name = raw['pollingLocations'][0]['address']['locationName']
    j.l_address= raw['pollingLocations'][0]['address']['line1']
    j.l_city = raw['pollingLocations'][0]['address']['city']
    j.l_state = raw['pollingLocations'][0]['address']['state']
    j.l_zip = raw['pollingLocations'][0]['address']['zip']
    j.l_date = raw['election']['electionDay']
    j.l_hours = raw['pollingLocations'][0]['pollingHours']
    j.l_url = 'https://www.usa.gov/register-to-vote'
    j.voter = i
    j.save!

    # this section updates the elected_through with uses and politicians
######## This section has been rendered obsolete
    # returns hashes
    # districts_by_zip = CSV.read("district_by_zipcode.csv", headers: true)
    # # returns two hashes per zip code (select the first one)
    # districts_by_zip_selected = districts_by_zip.select{|x| x['ZCTA'] == i.zip}
    # # holds the district number for the first hash
    # districts_by_zip_selected_first = districts_by_zip_selected[0][2]
    # # pick the politicians in the table based on the users district
    # @representative = Politician.where(district: districts_by_zip_selected_first)
    #
    # # president
    # t = ElectedThrough.new
    # t.voter_id = i.id
    # t.politician_id = Politician.where(job: 'President of the United States').ids[0]
    # t.save!
    #
    #
    # # vice president
    # t = ElectedThrough.new
    # t.voter_id = i.id
    # t.politician_id = Politician.where(job: 'Vice President of the United States').ids[0]
    # t.save!
    #
    # # representative
    # t = ElectedThrough.new
    # t.voter_id = i.id
    # t.politician_id = @representative[0]['id']
    # t.save!
    #
    # # two senators
    # # a = Politician.where(job: 'Senator')
    # a.each do |x|
    # t = ElectedThrough.new
    # t.voter_id = i.id
    # t.politician_id = x.id
    # t.save!
    # end



    # checks if i was saved, if not returns an error
    if i.save!
      redirect_to voter_path(i.id)
    else
      # there's an error
    end
  end

  def new
    @voter_form = Voter.new
    @list = Election.genElectionList

  end

  def edit
    id = params[:id]
    @voter = Voter.find(id)
  end

  def destroy
    if id = params[:id]
      Voter.delete(id)
      flash[:notice] = "You have deleted Voter #{id}"
      redirect_to voters_path
    end
  end

  def update
    id = params[:id]
    voter_hash = params.delete('voter')
    @voter = Voter.find(id)
    @voter.name_f = voter_hash['name_f']
    @voter.name_l = voter_hash['name_l']
    @voter.address = voter_hash['address']
    @voter.city = voter_hash['city']
    @voter.state = voter_hash['state']
    @voter.zip = voter_hash['zip']

    if @voter.save
      redirect_to voter_hash(@voter.id)
    end
  end

  def show

    id = Voter.where(devise_id: current_user.id).ids[0]
    @voter = Voter.find(id)
    i = @voter
    elected = ElectedThrough.where(voter_id: id)
    @contests = ApiDatum.candidates(i.address,i.city,i.state,i.zip,i.election)

    # # display president ####This section of code has been rendered obsolete
    # p = Politician.where(id: elected[0]['politician_id'])
    # @p_pic = p[0]['picture']
    # @p_namef = p[0]['name_f']
    # @p_namel = p[0]['name_l']
    # @p_job = p[0]['job']
    # @p_address = p[0]['address']
    # @p_city = p[0]['city']
    # @p_state = p[0]['state']
    # @p_zip = p[0]['zip']
    # @p_website = p[0]['website']
    # @p_district = p[0]['district']
    #
    # # display vice president
    # vp = Politician.where(id: elected[1]['politician_id'])
    # @vp_pic = vp[0]['picture']
    # @vp_namef = vp[0]['name_f']
    # @vp_namel = vp[0]['name_l']
    # @vp_job = vp[0]['job']
    # @vp_address = vp[0]['address']
    # @vp_city = vp[0]['city']
    # @vp_state = vp[0]['state']
    # @vp_zip = vp[0]['zip']
    # @vp_website = vp[0]['website']
    # @vp_district = vp[0]['district']
    #
    # # display representative
    # rp = Politician.where(id: elected[2]['politician_id'])
    # @rp_pic = rp[0]['picture']
    # @rp_namef = rp[0]['name_f']
    # @rp_namel = rp[0]['name_l']
    # @rp_job = rp[0]['job']
    # @rp_address = rp[0]['address']
    # @rp_city = rp[0]['city']
    # @rp_state = rp[0]['state']
    # @rp_zip = rp[0]['zip']
    # @rp_website = rp[0]['website']
    # @rp_district = rp[0]['district']
    #
    # # display senator 1
    # s1 = Politician.where(id: elected[3]['politician_id'])
    # @s1_pic = s1[0]['picture']
    # @s1_namef = s1[0]['name_f']
    # @s1_namel = s1[0]['name_l']
    # @s1_job = s1[0]['job']
    # @s1_address = s1[0]['address']
    # @s1_city = s1[0]['city']
    # @s1_state = s1[0]['state']
    # @s1_zip = s1[0]['zip']
    # @s1_website = s1[0]['website']
    # @s1_district = s1[0]['district']
    # # display senator 2
    # s2 = Politician.where(id: elected[4]['politician_id'])
    # @s2_pic = s2[0]['picture']
    # @s2_namef = s2[0]['name_f']
    # @s2_namel = s2[0]['name_l']
    # @s2_job = s2[0]['job']
    # @s2_address = s2[0]['address']
    # @s2_city = s2[0]['city']
    # @s2_state = s2[0]['state']
    # @s2_zip = s2[0]['zip']
    # @s2_website = s2[0]['website']
    # @s2_district = s2[0]['district']


    current_api_id = Voter.find(id).api_id
    @current_loc = ApiDatum.find(current_api_id)
    current_loc_address = @current_loc.l_address + ' ' + @current_loc.l_city + ' ' + @current_loc.l_state + ' ' + @current_loc.l_zip

    @query = {
      :address => current_loc_address,
      :key => "AIzaSyADg9cO6tVObFRbGvmPeAJcmrc13BbbqeQ",
      :size => '300x300',
      :markers => current_loc_address,
      :sensor => 'false'
    }.to_query
    url = URI.parse("https://maps.googleapis.com/maps/api/geocode/json?" + @query)
    req = Net::HTTP::Get.new(url.to_s)
    http = Net::HTTP.new(url.host,url.port)
    http.use_ssl = (url.scheme == "https")
    response = http.request(req)
    raw = response.body
    lat_long_holder = JSON.parse(raw)

    @state_name = ApiDatum.state_name(@current_loc.l_state)
    @lat = lat_long_holder['results'][0]['geometry']['location']['lat']
    @lng = lat_long_holder['results'][0]['geometry']['location']['lng']
    @name = @current_loc.l_name
  end
end
