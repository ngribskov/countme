class AddColumnToPolitician < ActiveRecord::Migration
  def change
    add_column :politicians, :district, :string
    add_column :politicians, :job, :string
  end
end
