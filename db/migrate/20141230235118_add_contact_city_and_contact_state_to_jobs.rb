class AddContactCityAndContactStateToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :contact_city, :string
    add_column :jobs, :contact_state, :string
  end
end
