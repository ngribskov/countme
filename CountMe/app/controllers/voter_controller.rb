require 'pry'
class VoterController < ApplicationController
  def index
  end
  def after_submit
    @params = params['user']
    @registered = params['registered']
  end
end
