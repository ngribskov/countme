class VotersController < ApplicationController

  before_action :authenticate_user!

  def index
    @voters = Voter.all

  end

  def create
    voter_hash = params.delete('voter')
    i = Voter.new
    i.name_f = voter_hash['name_f']
    i.name_l = voter_hash['name_l']
    i.address = voter_hash['address']
    i.city = voter_hash['city']
    i.state = voter_hash['state']
    i.zip = voter_hash['zip']
    i.user = current_user
    i.save!

    # this section inputs data into the api_data model while collecting data from the user.
    raw = ApiDatum.parse(i.address,i.city,i.state,i.zip)

     j = ApiDatum.new
     j.l_name = raw['pollingLocations'][0]['address']['locationName']
     j.l_address= raw['pollingLocations'][0]['address']['line1']
     j.l_city = raw['pollingLocations'][0]['address']['city']
     j.l_state = raw['pollingLocations'][0]['address']['state']
     j.l_zip = raw['pollingLocations'][0]['address']['zip']
     j.l_date = raw['election']['electionDay']
     j.l_hours = raw['pollingLocations'][0]['pollingHours']
     j.l_url = 'https://www.vote4dc.com/ApplyInstructions/Register'
     j.voter = i
     j.save!

    # checks if i was saved, if not returns an error
    if i.save!
      redirect_to voter_path(i.id)
    else
      # there's an error
    end
  end

  def new
    @voter_form = Voter.new
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
    id = params[:id]
    @voter = Voter.find(id)

end
end
