class VoterController < ApplicationController
  def index
    @voters = Voters.all
  end

  def create
  end

  def new
    @voter_form = Voters.new 
  end

  def edit
  end

  def destroy
  end

  def update
  end

  def show
  end
end
