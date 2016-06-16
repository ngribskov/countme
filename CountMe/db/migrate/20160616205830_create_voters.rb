class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :name_f
      t.string :name_l
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :api_id
      t.integer :devise_id

      t.timestamps null: false
    end
  end
end
