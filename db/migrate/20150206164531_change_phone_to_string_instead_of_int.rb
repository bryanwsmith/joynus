class ChangePhoneToStringInsteadOfInt < ActiveRecord::Migration
  def change
    change_column :jobs, :phone, :string
  end
end
