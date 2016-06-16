class VotersController < ApplicationController
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

    if i.save
      redirect_to voter_path(i.id)
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
