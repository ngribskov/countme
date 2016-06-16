class CreateApiData < ActiveRecord::Migration
  def change
    create_table :api_data do |t|
      t.string :l_name
      t.string :l_address
      t.string :l_city
      t.string :l_state
      t.string :l_zip
      t.string :l_date
      t.string :l_hours
      t.string :l_url

      t.timestamps null: false
    end
  end
end
