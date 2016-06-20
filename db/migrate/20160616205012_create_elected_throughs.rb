class CreateElectedThroughs < ActiveRecord::Migration
  def change
    create_table :elected_throughs do |t|
      t.integer :voter_id
      t.integer :politician_id

      t.timestamps null: false
    end
  end
end
