class AddSecondColumnToPolitician < ActiveRecord::Migration
  def change
      add_column :politicians, :job, :string
  end
end
