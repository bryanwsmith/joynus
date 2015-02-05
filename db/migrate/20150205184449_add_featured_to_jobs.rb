class AddFeaturedToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :featured, :bool
    add_column :jobs, :avionte_job_id, :int
    remove_column :jobs, :avionte_url, :string
  end
end
