class Voter < ActiveRecord::Base
  belongs_to :user, foreign_key: 'devise_id'
  belongs_to :api_data, foreign_key: 'api_id'
end
