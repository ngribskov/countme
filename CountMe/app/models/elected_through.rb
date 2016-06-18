class ElectedThrough < ActiveRecord::Base
  belongs_to :voter
  belongs_to :politician 
end
