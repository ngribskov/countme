class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string :name_f
      t.string :name_l
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :picture
      t.string :website

      t.timestamps null: false
    end
  end
end
