class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string  :company
      t.string  :contact_name
      t.string  :contact_title
      t.string  :email
      t.integer :phone
      t.string  :city
      t.string  :state
      t.integer :zip_code
      t.text    :description
      t.string  :description
      t.string  :title
      t.string  :salary
      t.string  :department

      t.timestamps
    end
  end
end
