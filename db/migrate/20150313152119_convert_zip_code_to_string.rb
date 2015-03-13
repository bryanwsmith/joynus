class ConvertZipCodeToString < ActiveRecord::Migration
  def change
    change_column :jobs, :zip_code, :string
  end
end
