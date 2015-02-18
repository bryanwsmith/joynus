class AddDefaultTrueOrFalseToFeaturedJobs < ActiveRecord::Migration
  def change
    change_column :jobs, :featured, :boolean, :default => true
  end
end
