class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    if Voter.where(devise_id: current_user.id).ids[0]
      voter_path(Voter.where(devise_id: current_user.id).ids[0])
    else
      new_voter_path
    end
  end
end
