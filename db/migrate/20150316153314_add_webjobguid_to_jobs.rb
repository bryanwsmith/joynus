class AddWebjobguidToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :webjobguid, :string
  end
end
