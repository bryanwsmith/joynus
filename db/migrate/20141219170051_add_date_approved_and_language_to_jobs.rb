class AddDateApprovedAndLanguageToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :date_approved, :date
    add_column :jobs, :language, :string
  end
end
