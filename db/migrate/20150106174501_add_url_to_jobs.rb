class AddUrlToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :avionte_url, :string
  end
end
