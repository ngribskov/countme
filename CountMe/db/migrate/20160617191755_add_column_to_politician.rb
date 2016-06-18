class AddColumnToPolitician < ActiveRecord::Migration
  def change
    add_column :politicians, :district, :string
  end
end
