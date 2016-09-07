class AddElectionIdToVoter < ActiveRecord::Migration
  def change
    add_column :voters, :election, :string
  end
end
